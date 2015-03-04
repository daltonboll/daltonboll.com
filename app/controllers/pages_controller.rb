class PagesController < ApplicationController
  
  before_filter :header_links # Allow @header_links to be accessible
  before_filter :footer_links
  
  # A Hash containing Header link pairs with link text and its link path
  def header_links
    @header_links = {
      "Home" => root_path,
      "About" => about_path,
      "Blog" => blog_path,
      "Projects" => projects_path,
      "Resume" => resume_path,
      "Contact" => contact_path,
      "Help" => help_path
    }
  end
  
  # A Hash containing Footer link pairs with link text and its link path
  def footer_links
    @footer_links = {
      "Google+" => "https://plus.google.com/+DaltonBoll",
      "Twitter" => "https://twitter.com/DaltonBoll",
      "LinkedIn" => "http://www.linkedin.com/in/daltonboll/",
      "Facebook" => "https://www.facebook.com/dalton.boll"
    }
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
