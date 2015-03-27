class MessageMailer < ApplicationMailer
  # This will be the email address that the messages will be sent to by default
  # default :to => "daltonboll@gmail.com"
  $to_me = "daltonboll@gmail.com"
  $from_me = "daltonboll@gmail.com"
  

  def message_me(msg)
  	@msg = msg
  	new_content = "New message received from #{@msg.name} at #{@msg.email}:\n----------\n\"#{@msg.content}\"\n----------"

  	mail to: $to_me, from: @msg.email, subject: @msg.subject, body: new_content
  end

  def notify_sender(msg)
  	@msg = msg
  	new_content = "Hello #{@msg.name},\n\nThank you very much for your message. For your records,"\
  	" a copy of your message is displayed below:\n----------\n\"#{@msg.content}\"\n----------\n\nI will do my best to get back to "\
  	"you as soon as possible. In the meantime, why not check out my blog?\n\nBest,\nDalton Boll\ndaltonboll.com"

  	@notify_subject = "Thank you for leaving me a message at daltonboll.com"

  	mail to: @msg.email, from: $from_me, subject: @notify_subject, body: new_content
  end
end