class GymReviewsController < ApplicationController
  def show
    @gym_review = GymReview.find(params[:id])
  end

  def new
    authorize
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

  def edit
    authorize
    @gym_review = GymReview.find(params[:id])
    @gyms = Gym.all
  end

  def update
    @gym_review = GymReview.find(params[:id])
    @gym_review.update(gym_review_params)
    @gym_review.save
    redirect_to gym_review_path(@gym_review)
  end

  def destroy
    @gym_review = GymReview.find(params[:id])
    @gym_review.destroy
    redirect_to gym_path(@gym_review.gym_id)
  end

  private

  def gym_review_params
    params.require(:gym_review).permit(:gym_id, :member_id, :rating, :content)
  end


end
