module PagesHelper
  
  # Returns the title of a particular page
  def get_page_title(page_title = '')
    base_title = "Dalton Boll"
    if page_title.empty?
      return base_title
    else
      return "#{page_title} | #{base_title}"
    end
  end
  
  # A Hash containing Header link pairs with link text and its link path
  def header_links
    @header_links = {
      "about" => {:action => "about", :path => root_path},
      "blog" => {:action => "blog", :path => blog_path},
      "projects" => {:action => "projects", :path => projects_path},
      "resume" => {:action => "resume", :path => resume_path},
      "contact" => {:action => "contact", :path => contact_path},
    }
  end

  class SocialButton
    attr_reader :name, :link, :font_awesome_class, :custom_class

    def initialize(name, link, font_awesome_class, custom_class)
      @name = name
      @link = link
      @font_awesome_class = font_awesome_class
      @custom_class = custom_class
    end

  end


  
  # A list containing SocialButtons
  def social_buttons
    googleplus = SocialButton.new("Google+", "https://plus.google.com/+DaltonBoll", "fa-google-plus", "social-googleplus")
    twitter = SocialButton.new("Twitter", "https://twitter.com/DaltonBoll", "fa-twitter", "social-twitter")
    linkedin = SocialButton.new("LinkedIn", "https://www.linkedin.com/in/daltonboll/", "fa-linkedin", "social-linkedin")
    facebook = SocialButton.new("Facebook", "https://www.facebook.com/dalton.boll", "fa-facebook", "social-facebook")
    github = SocialButton.new("GitHub", "https://github.com/daltonboll", "fa-github", "social-github")

    @social_buttons = [googleplus, twitter, linkedin, facebook, github]
  end
  
end
