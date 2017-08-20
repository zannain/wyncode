class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_action :save_page_to_session
  

  private
     def save_page_to_session
      session[:pages] ||= []
      session[:pages] << request.original_url
    end
end
