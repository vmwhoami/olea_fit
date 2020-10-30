# frozen_string_literal: true

module ApplicationHelper
  def log_in(user)
    session[:user] = user.username
  end

  def current_user
    @current_user ||= User.find_by_username(session[:user])
  end

  def logged_in?
    redirect_to login_path unless current_user
  end

  def destroy_session
    session[:user] = nil
    @current_user = nil
  end

  def current_user?(user)
    current_user == user
  end

  def follow_btn
    render 'users/followbtn' unless current_user.followed_persons.include?(@user) || current_user == @user
  end

  def unfollow_btn
    render 'users/unfollowbtn' if current_user.followed_persons.include?(@user)
  end

  def who_to_follow(follower)
    render 'users/whom_to_follow' if !current_user.followed_persons.include?(follower) && current_user != follower
  end


  
  def like_dislike_btn(opinion)
    like = Like.find_by(opinion: opinion, user: current_user)
    if like
      link_to('Dislike!', opinion_like_path(id: like.id, opinion_id: opinion.id), method: :delete)
    else
      link_to('Like!', opinion_likes_path(opinion_id: opinion.id), method: :post)
    end
  end


end
