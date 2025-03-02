module Api
  module V1
    class AuthController < ApplicationController
      skip_before_action :authorized, only: %i[login verify_token]

      # POST /api/v1/login
      def login
        user = User.find_by(email: params[:email])
        if user&.authenticate(params[:password])
          token = JwtService.encode(user_id: user.id)

          render json: { jwt: token, user: user.as_json(only: %i[id username email]) }, status: :ok
        else
          render json: { error: 'Invalid email or password' }, status: :unauthorized
        end
      end

      # POST /api/v1/verify-token
      def verify_token
        token = auth_header&.split&.last
        decoded_token = JwtService.decode(token)

        if decoded_token && (user = User.find_by(id: decoded_token[:user_id]))
          render json: { message: 'Token is valid', user: user.as_json(only: %i[id username email]) }, status: :ok
        else
          render json: { error: 'Invalid or expired token' }, status: :unauthorized
        end
      end
    end
  end
end
