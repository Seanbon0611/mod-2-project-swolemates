class CoachReviewsController < ApplicationController
  before_action :require_login
  def show
    @coach_review = CoachReview.find(params[:id])
  end

  def new
    @coach_review = CoachReview.new
    @coaches = Coach.all
  end

  def create
    @coaches = Coach.all
    @coach_review = CoachReview.create(coach_review_params)
    @coach_review.member_id = current_user_id if current_user_id
    if @coach_review.valid?
      @coach_review.save
      redirect_to coach_review_path(@coach_review)
    else
      flash[:errors] = @coach_review.errors.full_messages
      redirect_to new_coach_review_path
    end
  end

  def update
    @coach_review = CoachReview.find(params[:id])
  end

  def destroy
    @coach_review = CoachReview.find(params[:id])
  end

  private

  def coach_review_params
    params.require(:coach_review).permit(:coach_id, :member_id, :rating, :content)
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to signin_path # halts request cycle
    end
  end
end
