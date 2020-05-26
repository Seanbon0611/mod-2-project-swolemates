class CoachReview < ApplicationRecord
  belongs_to :coach
  belongs_to :member
end
