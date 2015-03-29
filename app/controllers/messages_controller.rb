class MessagesController < ApplicationController
  include PagesHelper

  before_filter :header_links # Allow @header_links from PagesHelper to be accessible
  before_filter :social_buttons # Allow @social_buttons from PagesHelper to be accessible

  def contact
    @message = Message.new
    @contact_title = "Contact Me"
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.message_me(@message).deliver_now
      MessageMailer.notify_sender(@message).deliver_now
      redirect_to message_received_path, notice: "Thank you for your message."
    else
      render :contact
    end
  end

  private
    def message_params
      params.require(:message).permit(:name, :email, :subject, :content)
    end 
end
