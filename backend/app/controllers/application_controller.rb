class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    payload[:exp] = 24.hours.from_now.to_i # Token expires in 24 hours
    JWT.encode(payload, ENV['JWT_SECRET'])
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end

  def decoded_token
    return unless auth_header

    token = auth_header.split(' ')[1]
    # header: { 'Authorization': 'Bearer <token>' }
    begin
      JWT.decode(token, ENV['JWT_SECRET'], true, algorithm: 'HS256')
    rescue JWT::DecodeError
      nil
    end
  end

  def logged_in_user
    return unless decoded_token

    user_id = decoded_token[0]['user_id']
    @user = User.find_by(id: user_id)
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    render json: { message: 'You have to be logged in to perform this action' }, status: :unauthorized unless logged_in?
  end
end
