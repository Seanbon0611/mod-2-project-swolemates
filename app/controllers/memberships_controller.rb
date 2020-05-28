class MembershipsController < ApplicationController
    def new
      @membership = Membership.new
    end
    def create
      byebug
      @membership = Membership.create(memberships_params)
    end

    private
    def memberships_params
      params.require(:membership).permit(:member_id, :gym_id)
    end
end