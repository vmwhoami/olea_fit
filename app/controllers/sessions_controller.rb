# frozen_string_literal: true

class SessionsController < ApplicationController
  layout 'athentication', only: %i[new create]

  def new; end

  def create
    user = User.find_by_username(params[:sessions][:username].downcase)
    if user
      log_in(user)
      redirect_to root_path
    else
      flash.now[:danger] = "There is no such user try again or register"
      render 'new'
    end
  end

  def destroy
    destroy_session
    redirect_to root_path
  end
end
