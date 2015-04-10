class Comment < ActiveRecord::Base
  belongs_to :post

  def get_formatted_website
    site = self.website
    if self.website
      if site.start_with?("http://") or site.start_with?("https://")
        return site
      else
        return site = "http://#{site}"
      end
    else
      return "#"
    end
  end

end
