class MembersController < ApplicationController

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.create(member_params)
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
  end

  def delete
    @member = Member.find(params[:id])
  end

  private

  def member_params
    params.require(:member).permit(:name, :email, :address, :age, :img_url)
  end
end
