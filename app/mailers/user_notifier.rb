class UserNotifier < ApplicationMailer
  default from: "noreply@sweetdivascookies.com"
  default to: "orbitwhitex@gmail.com"
  default subject: 'Craving Those Cookies!'

  def req_email(name, email, content)
    @name = name
	@email = email
  	@content = content

    mail( body: [@name, @email, @content]
    )
  end
end
