module Api
  module V1
    # implements Api::V1::AuthController
    class AuthController < ApplicationController
      skip_before_action :authorized, only: [:login]

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
    end
  end
end
