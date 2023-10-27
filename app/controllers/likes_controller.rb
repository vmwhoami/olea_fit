# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    current_user.likes.create(opinion_id: params[:opinion_id])
    return_back
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, opinion_id: params[:opinion_id])
    like&.destroy
    return_back
  end

  private

  def return_back
    redirect_back(fallback_location: root_path)
  end
end
