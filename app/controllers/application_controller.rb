class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :female?, :logged_in?

  def logged_in?
    !session[:user_id].nil?
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

