class UrlsController < ApplicationController

  def show
    @url = Url.find(params[:id])
    @org = request.original_url
  end
  
  def index
    @urls = Url.all
    @org = request.original_url
  end
  
  def new 
    @url = Url.new
  end
  
  def create
    @url = Url.new(url_params)
    @url.save
    @org = request.original_url
    
    # redirect_to urls_path
  end

  private
  def url_params
    params.require(:url).permit(:long_url)
  end
  
end
<%= @org %>
