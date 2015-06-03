class Message < MailForm::Base
  
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true


  def headers
    {
      :subject => "Craving Those Cookies!",
      :to => ENV['SDC_EMAIL'],
      :from => "noreply@sweetdivascookies.com" 
    }
  end

end