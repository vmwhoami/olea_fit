class ApplicationController < ActionController::API
  before_action :authorized

  private

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    token = auth_header&.split&.last
    JwtService.decode(token)
  end

  def logged_in_user
    return unless decoded_token

    @logged_in_user ||= User.find_by(id: decoded_token[:user_id])
  end

  def logged_in?
    logged_in_user.present?
  end

  def authorized
    render json: { message: 'You must be logged in to perform this action' }, status: :unauthorized unless logged_in?
  end
end
