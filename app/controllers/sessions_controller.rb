class SessionsController < ApplicationController
  def new 
    
  end

  def create
    user = User.find_by_username(username: params[:session][:username].downcase)
    session[:user] = user.username

  end
  

  def destroy

  end
end