Rails.application.routes.draw do
  resources :users
  root 'home#index'
  # get '/part-2' => 'home#index2'
  # get '/test/:student_name' => 'home#idex'
  post 'students/:id' => 'home#post'
  get 'students/:id' => 'home#post'
  # get 'students/:id' => 'home#index2'
  post '/post' => 'home#post'
  get '/login' => 'users#login'
  get '/logout' => 'users#logout'
  get '/new' => 'home#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
