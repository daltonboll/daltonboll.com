class MessageMailer < ApplicationMailer
  # This will be the email address that the messages will be sent to by default
  default :to => "daltonboll@gmail.com"

  def message_me(msg)
  	@msg = msg

  	mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end
end