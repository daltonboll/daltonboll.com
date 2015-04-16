class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # Ensure 301 redirect from heroku
  before_filter :ensure_domain
  APP_DOMAIN = 'www.daltonboll.com'

  include PagesHelper
  before_filter :header_links # Allow @header_links from PagesHelper to be accessible
  before_filter :social_buttons # Allow @social_buttons from PagesHelper to be accessible
  before_filter :set_registration # Allow checking of open registration across application




  # Ensure 301 redirect from heroku
  def ensure_domain
    if request.env['HTTP_HOST'].include? "heroku"
      # HTTP 301 is a "permanent" redirect
      redirect_to "http://#{APP_DOMAIN}", :status => 301
    end
  end

  def set_registration
    @registration_open = false # Are we accepting new user registration?
  end

end
