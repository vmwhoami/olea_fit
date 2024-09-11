class Api::V1::SessionsController < ApplicationController
  def new
    # binding.pry_remote
  end

  def create
    user = User.find_by_username(params[:sessions][:username].downcase)
    if user
      log_in(user)
    else
      render json: { message: 'There is no such user try again or register' }
    end
  end

  def destroy
    destroy_session
  end
end
