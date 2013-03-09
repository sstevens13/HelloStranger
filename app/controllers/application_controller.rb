class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :checked_in?

  def checked_in?
    @user = User.find(session[:user_id])
    if @user.nil?
      return false
    elsif @user
      return false
    else
      return true
    end
  end


  # before_filter :require_login

  # helper_method :current_user_session, :current_user

  # private
  	
  # 	def require_login
  # 		unless logged_in?
  # 			flash[:error] = "You must be logged in to access this page"
  # 			redirect_to new_user_session_url
  			

  # 	def current_user_session
  # 		return @current_user_session if defined?(@current_user_session)
  # 		@current_user_session = UserSession.find
  # 	end

  # 	def current_user
  # 		return @current_user if defined?(@current_user)
  # 		@current_user = current_user_session
  # 	end

  # 	def require_user
  # 		unless current_user
  # 			store_location
  # 			flash[:notice] = "You must be logged in to access this page"
  # 			redirect_to new_user_session_url
  # 			return false
  # 		end
  # 	end
end

