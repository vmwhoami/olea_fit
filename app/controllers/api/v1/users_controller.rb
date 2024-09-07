class Api::V1::UsersController < ApplicationController
  #  before_action :logged_in?, only: %i[index show edit destoroy]
  # before_action :current_user?, only: %i[edit]
  # before_action :find_user, only: %i[edit update destroy show]

  def index
    render json: { userS: User.all }
  end
  # def followers
  #   @fresh_users = User.fresh_users
  #   arr = Following.where('followed_id = ?', current_user.id).pluck(:follower_id)
  #   @followers = User.where('id in (?)', arr).includes(:followings)
  # end

  # def following
  #   @users = User.most_followed
  #   arr = Following.where('follower_id = ?', current_user.id).pluck(:followed_id)
  #   @following = User.where('id in (?)', arr).includes(:followings)
  # end

  # def index
  #   @users = User.most_followed
  # end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(permitted_params)
  #   if @user.save
  #     flash[:success] = 'User was successfully created.'
  #     log_in(@user)
  #     redirect_to user_path(@user)
  #   else
  #     flash[:danger] = @user.errors.full_messages[0]
  #     redirect_back(fallback_location: root_path)
  #   end
  # end

  # def show; end

  # def edit; end

  # def update
  #   respond_to do |format|
  #     if @user.update(permitted_params)
  #       format.html { redirect_to @user, notice: 'User was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @user }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @user.destroy
  #   respond_to do |format|
  #     format.html { redirect_to user_url, notice: 'User was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private

  # def current_user?
  #   if current?(find_user)
  #     nil
  #   else
  #     redirect_to root_path
  #     flash[:danger] = "You don't have the right credentials"
  #   end
  # end

  # def find_user
  #   @user = User.find(params[:id])
  # end

  # def permitted_params
  #   params.require(:user).permit(:username, :fullname, :photo, :coverimage)
  # end
end
