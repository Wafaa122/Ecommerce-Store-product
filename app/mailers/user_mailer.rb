class UserMailer < ApplicationMailer

  default from: "rubystore774@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(  to: 'rubystore774@gmail.com',
           subject: "A new contact form message from #{name}",
           body: "A new contact form message from #{message}")


  end
end
