class UserMailer < ActionMailer::Base
  default from: "info@sevasolan.com"

   def welcome_email(user)
   	@user = user
   	mail to: user.email, subject: "Sign up confirmation"
 end

  def pin_confirmation(user)
  	@user = user
  	mail to: user.email, subject: "Pin creation confirmation"
end

end