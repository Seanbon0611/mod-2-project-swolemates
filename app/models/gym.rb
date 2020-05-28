class Gym < ApplicationRecord
  has_many :gym_equipments
  has_many :equipments, through: :gym_equipments
  has_many :memberships
  has_many :members, through: :memberships
  has_many :gym_reviews
  has_many :members, through: :gym_reviews
  has_many :coaches
  accepts_nested_attributes_for :memberships

  def memberships_count
    array = self.memberships.map{|m| m}
    array.count
  end

  def review_rating_average
    mapped_ratings = self.gym_reviews.map{|review| review.rating}
    mapped_ratings.inject{|acc, num| acc + num}.to_f / mapped_ratings.count
  end

end
