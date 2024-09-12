class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      token = encode_token({ user_id: user.id })
      render json: { user:, token: }, status: :ok
    else
      render json: { message: 'Invalid credentials' }, status: :unauthorized
    end
  end

  def destroy
    destroy_session
  end

  private

  def user_params
    params.require(:user).permit(:username, :fullname, :password, :password_confirmation)
  end
end
