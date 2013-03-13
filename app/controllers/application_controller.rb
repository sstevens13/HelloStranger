class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :checked_in?

  def checked_in?
    user_id = session[:user_id]
    if user_id.nil?
      return false
    end

    @user = User.find(user_id)
    if @user.check_in_id.nil?
      return false
    else
      return true
    end
  end

end

