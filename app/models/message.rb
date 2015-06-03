class Message < MailForm::Base
  
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :content,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Craving Those Cookies!",
      :to => ENV['SDC_EMAIL'],
      :from => "noreply@sweetdivascookies.com" 
    }
  end

end