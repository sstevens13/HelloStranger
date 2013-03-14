class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :checked_in?

  def checked_in?
    !User.find(session[:user_id]).check_in_id.nil?
  end
end

