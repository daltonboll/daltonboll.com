class MessageMailer < ApplicationMailer
  # This will be the email address that the messages will be sent to by default
  # default :to => "daltonboll@gmail.com"
  $my_email = "daltonboll@gmail.com"
  
  def message_me(msg)
  	@msg = msg
  	mail to: $my_email, from: @msg.email, subject: @msg.subject, reply_to: @msg.email
  end

  def notify_sender(msg)
  	@msg = msg
  	@notify_subject = "Message received"
  	@from_name = "Dalton Boll"

  	mail to: @msg.email, from: @from_name, subject: @notify_subject, reply_to: $my_email
  end
end