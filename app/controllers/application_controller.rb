class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # Ensure 301 redirect from heroku
  before_filter :ensure_domain
  APP_DOMAIN = 'www.daltonboll.com'

  # Ensure 301 redirect from heroku
  def ensure_domain
    if request.env['HTTP_HOST'] != APP_DOMAIN && ENV["RAILS_ENV"] != 'development'
      # HTTP 301 is a "permanent" redirect
      redirect_to "http://#{APP_DOMAIN}", :status => 301
    end
  end
end
