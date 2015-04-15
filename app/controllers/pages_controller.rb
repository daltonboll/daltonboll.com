class PagesController < ApplicationController
  
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
