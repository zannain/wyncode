Rails.application.routes.draw do
  resources :labels
  resources :albums
  get '/' => 'site#search'
  post '/site/search' => 'site#search'
  get 'site/search'

  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
