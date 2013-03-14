class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :checked_in?

  def checked_in?
    @checked_in = CheckIn.where(user_id: session[:user_id], present: true)
    if @checked_in.nil?
      return false
    return true 
  end

end

