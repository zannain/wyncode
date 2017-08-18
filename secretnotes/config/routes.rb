Rails.application.routes.draw do
  resources :notes
  root 'sessions#new'
  get 'sessions/new'
  resource :users
  resource :sessions
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
