module Api
  module V1
    # implements Api::V1::UsersController
    class UsersController < ApplicationController
      skip_before_action :authenticate_request, only: [:create]

      before_action :set_user, only: %i[show destoroy]

      def index
        @users = User.most_followed

        render json: { most_followed: @users }
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: { message: 'User was successfully created.' }
        else
          render json: { message: @user.errors.full_messages[0] }
        end
      end

      def followers
        @fresh_users = User.fresh_users
        arr = Following.where('followed_id = ?', current_user.id).pluck(:follower_id)
        @followers = User.where('id in (?)', arr).includes(:followings)
      end

      def following
        @users = User.most_followed
        arr = Following.where('follower_id = ?', current_user.id).pluck(:followed_id)
        @following = User.where('id in (?)', arr).includes(:followings)
      end

      def show
        render json: { user: @user }
      end

      def edit
        binding.pry_remote
      end

      def update
        respond_to do |format|
          if @user.update(user_params)

            format.json { render :show, status: :ok, location: @user }
          else

            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        @user.destroy
        render json: { message: 'User was successfully destroyed.' }
      end

      private

      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:username, :email, :password)
      end
    end
  end
end
