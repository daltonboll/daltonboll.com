class MessagesController < ApplicationController
  include PagesHelper

  before_filter :header_links # Allow @header_links from PagesHelper to be accessible
  before_filter :footer_links # Allow @footer_links from PagesHelper to be accessible

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.message_me(@message).deliver_now
      redirect_to new_message_path, notice: "Thank you for your message."
    else
      render :new
    end
  end

  private
    def message_params
      params.require(:message).permit(:name, :email, :subject, :content)
    end 
end
