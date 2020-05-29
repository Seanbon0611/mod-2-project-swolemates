class GymsController < ApplicationController

  def index
    @gyms = Gym.all
  end

  def show
    @current_user = current_user_id
    @membership = Membership.new
    @gym = Gym.find(params[:id])
    @review = GymReview.find{|g|:gym_id == params[:id] && :member_id == current_user_id}
  end

  def edit
    @gym = Gym.find(params[:id])
  end

  def update
    @gym = Gym.find(params[:id])
    @gym.update_attribute(gym_params)
  end

  private

  def gym_params
    params.require(:gym).permit(:name, :address, :is_open, :img_url,:member_id, :gym_id)
  end
  
end
