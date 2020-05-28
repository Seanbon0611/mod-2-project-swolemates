class GymReviewsController < ApplicationController
  before_action :require_login
  def show
    @gym_review = GymReview.find(params[:id])
  end

  def new
    @gym_review = GymReview.new
    @gyms = Gym.all
  end

  def create
    @gyms = Gym.all
    @gym_review = GymReview.create(gym_review_params)
    @gym_review.member_id = current_user_id if current_user_id
    if @gym_review.valid?
      @gym_review.save
      redirect_to gym_review_path(@gym_review)
    else
      flash[:errors] = @gym_review.errors.full_messages
      redirect_to new_gym_review_path
    end
  end

  def update
    @gym_review = GymReview.find(params[:id])
  end

  def destroy
    @gym_review = GymReview.find(params[:id])
  end

  private

  def gym_review_params
    params.require(:gym_review).permit(:gym_id, :member_id, :rating, :content)
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to signin_path # halts request cycle
    end
  end
end
