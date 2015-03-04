class PagesController < ApplicationController
  
  def home
  end

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
    @resume_title = "Resume"
  end

  def projects
    @projects_title = "Projects"
  end
  
end
