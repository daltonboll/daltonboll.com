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
end
