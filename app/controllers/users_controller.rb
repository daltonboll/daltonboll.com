class UsersController < ApplicationController
  include PagesHelper
  
  before_filter :header_links # Allow @header_links from PagesHelper to be accessible
  before_filter :footer_links # Allow @footer_links from PagesHelper to be accessible
  
  def new
  end
end
