class GymReview < ApplicationRecord
  belongs_to :gym
  belongs_to :member
  validates :rating, inclusion: { in: [1,2,3,4,5], message: "must be between 1 and 5" }
  validates :content, length: { in: 10..150, message: "must be between 10 and 150 characters long" }
end
