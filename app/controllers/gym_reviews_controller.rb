class GymReviewsController < ApplicationController
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
    if @gym_review.valid?
      @gym_review.save
      redirect_to gym_review_path(@gym_review)
    else
      flash[:errors] = @gym_review.errors.full_messages
      render :new
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
end
