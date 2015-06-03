class UserNotifier < ApplicationMailer
  default from: "noreply@sweetdivascookies.com"

  def req_email(message)
    
    @messagem = message

    mail( :to => ENV['SDC_EMAIL'],  :subject => 'Craving Those Cookies!')
    
  end
end
