module Api
  module V1
    # implements Api::V1::FollowingsController
    class FollowingsController < ApplicationController
      def create
        current_user.followings.create(followed_id: params[:user_id])
      end

      def destroy
        f = current_user.followings.find_by_followed_id(params[:id])
        f.destroy
      end
    end
  end
end
