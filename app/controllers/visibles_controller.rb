class VisiblesController < ApplicationController

  def create
    @user_of_interest = params[:user_id]
    @hidden_user =session[:user_id]

    if !Visible.where(hidden_user: @hidden_user, user_of_interest: @user_of_interest).blank?
      redirect_to user_path(@user_of_interest), 
        notice: "You've already allowed #{User.find(params[:user_id]).username} to see you!"   
    else
      Visible.create(hidden_user: @hidden_user, user_of_interest: @user_of_interest)
      InterestMailer.interested_email(User.find(@user_of_interest), User.find(@hidden_user)).deliver
      redirect_to user_path(@user_of_interest), notice: 
        "You've allowed #{User.find(params[:user_id]).username} to see you!" 
    end
  end

  def destroy

  end
end