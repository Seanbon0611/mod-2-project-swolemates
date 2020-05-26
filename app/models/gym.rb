class Gym < ApplicationRecord
  has_many :gym_equipments
  has_many :equipments, through: :gym_equipments
  has_many :memberships
  has_many :members, through: :memberships
  has_many :gym_reviews
  has_many :members, through: :gym_reviews
  has_many :coaches
end
