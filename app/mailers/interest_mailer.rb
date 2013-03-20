class InterestMailer < ActionMailer::Base
  default from: 'info@hellostranger.info'

  def interested_email(user_of_interest, hidden_user)
    @user_of_interest = user_of_interest.username
    @hidden_user = hidden_user.username
    @url  = "http://hellostranger.info#{user_path(hidden_user.id)}"
    mail(:to => user_of_interest.email, :subject => "#{hidden_user.username} is interested in you!")
  end
end
