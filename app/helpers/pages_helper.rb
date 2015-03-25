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
  
  # A Hash containing Footer link pairs with link text and its link path
  def footer_links
    @footer_links = {
      "Google+" => "https://plus.google.com/+DaltonBoll",
      "Twitter" => "https://twitter.com/DaltonBoll",
      "LinkedIn" => "http://www.linkedin.com/in/daltonboll/",
      "Facebook" => "https://www.facebook.com/dalton.boll"
    }
  end
  
end
