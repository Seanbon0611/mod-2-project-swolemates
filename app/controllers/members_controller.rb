class MembersController < ApplicationController

  def index
    current_user = Member.find_by_id(session[:member_id])
  end
  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.create(member_params)
    if @member.valid?
      flash[:notice] = "Signed Up!"
      redirect_to @member
    else
      flash[:error] = @member.errors.full_messages
      redirect_to new_member_path
    end
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
    params.require(:member).permit(:name, :email, :address, :age, :img_url, :password, :password_confirmation)
  end
end
