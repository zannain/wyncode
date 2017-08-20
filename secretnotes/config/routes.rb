Rails.application.routes.draw do
  root 'sessions#new'
  resources :notes
  resource :users
  resource :sessions
  get 'sessions/new'
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
