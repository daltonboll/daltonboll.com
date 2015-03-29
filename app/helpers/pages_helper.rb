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

    def initialize(name, link, font_awesome_class=nil, custom_class=nil)
      @name = name
      @link = link
      @font_awesome_class = font_awesome_class
      @custom_class = custom_class
    end

  end


  
  # A Hash containing Footer link pairs with link text and its link path
  def footer_links
    @footer_links = {
      "Google+" => "https://plus.google.com/+DaltonBoll",
      "Twitter" => "https://twitter.com/DaltonBoll",
      "LinkedIn" => "https://www.linkedin.com/in/daltonboll/",
      "Facebook" => "https://www.facebook.com/dalton.boll",
      "GitHub" => "https://github.com/daltonboll"
    }
  end
  
end
