class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :checked_in?

  def checked_in?
    if !session[:user_id].nil?
      return !User.find(session[:user_id]).check_in_id.nil?
    end
  end
end

