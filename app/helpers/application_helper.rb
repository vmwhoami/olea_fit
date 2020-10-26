module ApplicationHelper


  def log_in(user)
    session[:user] = user.username
  end

  def current_user
    @current_user||= User.find_by_username(session[:user])
  end

  def logged_in?
    !!@current_user.nil?
  end


  def destroy_session
    session[:user] = nil
    @current_user = nil
  end

end
