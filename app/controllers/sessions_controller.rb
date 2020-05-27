class SessionsController < ApplicationController
  def new
  end

  def create
    member = Member.authenticate(params[:email], params[:password])
    if member
      session[:member_id] = member.id
      redirect_to root_url
      flash[:notice] = "Logged in!"
    else 
      flash[:error] = "Invalid email or password"
      redirect_to new_session_path
    end
  end

  def destroy
    session[:member_id] = nil
    redirect_to root_url, flash[:notice] = "Logged out!"
  end


end
