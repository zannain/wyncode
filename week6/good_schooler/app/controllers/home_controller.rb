class HomeController < ApplicationController
  layout 'wyncode', except: [:index]
  def index
    @users = User.all
    # render plain: params["students"]["cool_one"]
  end

  # def index2
  #   @users = User.where('name LIKE')/
  #   end
  def new
  end


  def post
    render json: params
  end

end
