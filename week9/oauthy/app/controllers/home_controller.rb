class HomeController < ApplicationController
  def index
  end

  def token
    sessions[:token] = params[:token]
    render json: {success: true}
  end

  def profile
    url = 'https://graph.facebook.com/me'
    url += '?access_token='+session[:token]
    url += '&fields=first_name,last_name,email'
    render json: HTTParty.get(url)
  end


end
