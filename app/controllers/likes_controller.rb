class LikesController < ApplicationController
  def create
    current_user.likes.create(opinion_id: params[:opinion_id])
    return_back
  end

  # /opinions/:opinion_id/likes/:id(.:format)
  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy
    return_back
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, opinion_id: params[:opinion_id])
    if like
      like.destroy
      return_back
    else
      return_back
    end
  end

  private

  def return_back
    redirect_back(fallback_location: root_path)
  end
end
