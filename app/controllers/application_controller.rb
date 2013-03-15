class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :checked_in?, :female?

  def checked_in?
    if !session[:user_id].nil?
      return !User.find(session[:user_id]).check_in_id.nil?
    end
  end

  def female?
  	if !session[:user_id].nil?
  	  if User.find(session[:user_id]).gender.eql? "F"
  	  	return true
  	  else
  	  	return false
  	  end
  	else 
  		return nil
  	end
  end
end

