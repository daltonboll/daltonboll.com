class PagesController < ApplicationController
  include PagesHelper
  
  before_filter :header_links # Allow @header_links from PagesHelper to be accessible
  before_filter :social_buttons # Allow @social_buttons from PagesHelper to be accessible

  def help
    @help_title = "Help"
  end

  def contact
    @contact_title = "Contact Me"
  end

  def about
    @about_title = "About Me"
  end

  def blog
    @blog_title = "Blog"
  end

  def resume
    @resume_title = "My Resume"
  end

  def projects
    @projects_title = "My Projects"
  end

  def message_received
    @message_received_title = "Message Received"
  end
  
end
