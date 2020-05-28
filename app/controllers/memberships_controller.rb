class MembershipsController < ApplicationController
    def new
      @membership = Membership.new
    end
    def create
      @membership = Membership.create(memberships_params)
      if @membership.valid?
        redirect_to gym_path(@membership.gym_id)
      else  
        flash[:error] = @membership.errors.full_messages
        redirect_to gym_path(@membership.gym_id)
      end
    end

    private
    def memberships_params
      params.require(:membership).permit(:member_id, :gym_id)
    end
end