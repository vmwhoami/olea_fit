module Api
  module V1
    # implements Api::V1::LikesController
    class LikesController < ApplicationController
      def create
        current_user.likes.create(opinion_id: params[:opinion_id])
      end

      def destroy
        like = Like.find_by(id: params[:id], user: current_user, opinion_id: params[:opinion_id])
        like&.destroy
      end
    end
  end
end
