module Api
  module V1
    # implements Api::V1::UsersController
    class UsersController < ApplicationController
      before_action :logged_in?, only: %i[index show edit destoroy]
      before_action :current_user?, only: %i[edit]
      before_action :find_user, only: %i[edit update destroy show]
      skip_before_action :authorized, only: [:register]

      def register
        @user = User.new(permitted_params)

        if @user.save
          token = encode_token({ user_id: @user.id }) # Generate a JWT token upon successful registration
          render json: { user: @user, token: }, status: :created
        else
          render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def index
        @users = User.most_followed

        render json: { most_followed: @users }
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

      def create
        @user = User.new(permitted_params)
        if @user.save
          render json: { message: 'User was successfully created.' }
          log_in(@user)
          redirect_to user_path(@user)
        else
          render json: { message: @user.errors.full_messages[0] }

          redirect_back(fallback_location: root_path)
        end
      end

      def show; end

      def edit; end

      def update
        respond_to do |format|
          if @user.update(permitted_params)

            format.json { render :show, status: :ok, location: @user }
          else

            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        @user.destroy
        respond_to do |format|
          format.json { head :no_content, notice: 'User was successfully destroyed.' }
        end
      end

      private

      def current_user?
        if current?(find_user)
          nil
        else
          render json: { response_message: "You don't have the right credentials" }
        end
      end

      def find_user
        @user = User.find(params[:id])
      end

      def permitted_params
        params.require(:user).permit(:username, :fullname, :photo, :coverimage, :username, :password,
                                     :password_confirmation)
      end
    end
  end
end
