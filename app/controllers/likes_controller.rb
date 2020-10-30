# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    current_user.likes.create(opinion_id: params[:opinion_id])
    redirect_back(fallback_location: root_path)
  end

  # /opinions/:opinion_id/likes/:id(.:format)
  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy
    redirect_back(fallback_location: root_path)
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, opinion_id: params[:opinion_id])
    if like
      like.destroy
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end
end
