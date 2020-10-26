class SessionsController < ApplicationController
  
  def new 
    
  end

  def create
    user = User.find_by_username(params[:sessions][:username].downcase)
    if user
    log_in(user)
    redirect_to user_path(user)
    else
      flash.now[:error] = "User does not exist"
      render "new"
    end
  end
  

  def destroy
    destroy_session
    redirect_to root_path
  end
end