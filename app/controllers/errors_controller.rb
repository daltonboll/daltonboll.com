class ErrorsController < ApplicationController
	include PagesHelper
  
	before_filter :header_links # Allow @header_links from PagesHelper to be accessible
	before_filter :social_buttons # Allow @social_buttons from PagesHelper to be accessible
	
  def error404
    render status: :not_found
  end
end