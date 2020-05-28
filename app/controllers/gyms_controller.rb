class GymsController < ApplicationController

  def index
    @gyms = Gym.all
  end

  def show
    @membership = Membership.new
    @gym = Gym.find(params[:id])
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
