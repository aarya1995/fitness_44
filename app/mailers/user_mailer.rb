class UserMailer < ActionMailer::Base
  #default from: "no@reply.com"
  
  def user_message(name, email, text)
  	@name = name
  	@email = email
  	@text = text
  	mail(to: 'abhas.aryaa@gmail.com', from: @email, subject: 'General Inquiry')
  end
end
