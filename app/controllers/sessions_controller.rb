class SessionsController < ApplicationController
  def new

  end

  def create
    @member = Member.find_by(email: params[:email])
    if @member && @member.authenticate(params[:password])
      log_in_user(@member.id)
      redirect_to @member
    else
      flash[:error] = "Invalid email or password"
      redirect_to signin_path
    end
  end

  def destroy
    log_out_user
    redirect_to signin_path
  end


end


# def create
#   @member = Member.find(email: params[:email])
#   member = Member.authenticate(params[:email], params[:password])
#   byebug
#   if member
#     session[:member_id] = member.id
#     redirect_to root_url
#     flash[:notice] = "Logged in!"
#   else 
#     flash[:error] = "Invalid email or password"
#     redirect_to new_session_path
#   end
# end