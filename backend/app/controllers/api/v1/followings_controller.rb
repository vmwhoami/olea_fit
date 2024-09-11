class Api::V1::FollowingsController < ApplicationController
  def create
    current_user.followings.create(followed_id: params[:user_id])
  end

  def destroy
    f = current_user.followings.find_by_followed_id(params[:id])
    f.destroy
  end
end
