Rails.application.routes.draw do
  get 'sessions/new'
  resource :users
  resource :sessions
  root 'sessions#new'
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
