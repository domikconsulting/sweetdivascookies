class UserNotifier < ApplicationMailer
  default from: "noreply@sweetdivascookies.com"

  def req_email(name, email, content)
    
    @name = name
    @email = email
    @message = message
    
    mail( :to => ENV['SDC_EMAIL'],  :subject => 'Craving Those Cookies!')
    
  end
end
