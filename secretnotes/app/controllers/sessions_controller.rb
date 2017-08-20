class SessionsController < ApplicationController
  def new
    # root 'sessions#new'
    # get 'sessions/new'
    @user = User.new
  end

  def create
    @user = User.
      find_by(username: params[:username]).
      try(:authenticate, params[:password])

      return render action: 'new' unless @user

      #logged in, hooray
      session[:user_id] = @user.id
      redirect_to notes_path
  end
end
