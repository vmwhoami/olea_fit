class FollowingsController < ApplicationController  
  
  def create
     current_user.followings.create(followed_id: params[:user_id])
  end

  def destroy
  end
end