class Coach < ApplicationRecord
  belongs_to :gym
  has_many :specialties
  has_many :coach_reviews
  has_many :members, through: :coach_reviews
end
