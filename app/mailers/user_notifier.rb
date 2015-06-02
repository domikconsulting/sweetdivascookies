class UserNotifier < ApplicationMailer
  default from: 'SDC.Request@gmail.com'
  default to: ENV['SDC_EMAIL']
  default subject: 'Craving Those Cookies!'

  def req_email(name, email, content)
    @name = name
	@email = email
  	@content = content

    mail( body: [@name, @email, @content]
    )
  end
end