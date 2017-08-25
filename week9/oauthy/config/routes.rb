Rails.application.routes.draw do
  root 'home#index'
  get '/users/token' => 'home#token'
  get '/users/profile' => 'home#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
