Rails.application.routes.draw do
  resource :users
  root 'users#new'
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
