module Api
  module V1
    # implements Api::V1::AuthController
    class AuthController < ApplicationController
      skip_before_action :authorized, only: [:login, :verify_token]

      def login
        user = User.find_by(email: params[:email])
        if user&.authenticate(params[:password])
          payload = { user_id: user.id }
          token = encode_token(payload)
          render json: { user:, jwt: token, success: "Welcome back, #{user.username}" }
        else
          render json: { failure: 'Log in failed! Email or password is invalid!' }
        end
      end

      def verify_token
        token = request.headers['Authorization']&.split(' ')&.last
        decoded_token = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
        user_id = decoded_token['user_id']
        user = User.find(user_id)

        if user
          render json: { message: 'Token is valid' }, status: :ok
        else
          render json: { error: 'Invalid token' }, status: :unauthorized
        end
      rescue JWT::DecodeError
        render json: { error: 'Invalid token' }, status: :unauthorized
      end
    end
  end
end
