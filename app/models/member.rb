class Member < ApplicationRecord
  has_many :memberships
  has_many :gyms, through: :memberships
  has_many :gym_reviews
  has_many :gyms, through: :gym_reviews
  has_many :coach_reviews
  has_many :coaches, through: :coach_reviews
  validates :name, presence: true
  validate :age_range
  validates :address, presence: true


  def age_range
    if self.age < 1
      errors.add(:age, "must be over 0")
    end
  end
end
