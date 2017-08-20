Rails.application.routes.draw do
  get 'hello' => 'static#hello'
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
