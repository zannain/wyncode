class UsersController < ApplicationController
  def index
    @users = User.all
              end

  def show
    @name = User.find(params[:id])
  end
end
