class FollowingsController < ApplicationController  
  
  def create
     current_user.followings.create(followed_id: params[:user_id])
     redirect_back(fallback_location: root_path)
  end

  def destroy
  end
end