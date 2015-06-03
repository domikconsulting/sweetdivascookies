class UserNotifier < ApplicationMailer
  default from: "noreply@sweetdivascookies.com"

  def req_email(name, email, content)
    

    mail( :to => ENV['SDC_EMAIL'],  :subject => 'Craving Those Cookies!')
    
  end
end
