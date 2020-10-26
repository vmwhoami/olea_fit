class SessionsController < ApplicationController
  def new 
    
  end

  def create
    user = User.find_by_username(username: params[:session][:username].downcase)
    if user
    session[:user] = user 
    redirect_to user_path(user)
    else
      flahs.now[error] = "User does not exist"
      render "new"
    end
  end
  

  def destroy

  end
end