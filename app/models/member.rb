class Member < ApplicationRecord
  has_many :memberships
  has_many :gyms, through: :memberships
  has_many :gym_reviews
  has_many :gyms, through: :gym_reviews
  has_many :coach_reviews
  has_many :coaches, through: :coach_reviews
  
end
