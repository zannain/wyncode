Rails.application.routes.draw do
  
  root 'sessions#index'
  devise_for :users
  get 'search_crypto', to: 'cryptocurrencies#new'
  resources "cryptocurrencies"
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
