Rails.application.routes.draw do

  resources :users
  resources :i_prices
  resources :gprices
  root 'home#index'
  
  get 'home/index'

  get 'home/about'

  get 'home/contact'

  get 'home/privacy'

  get 'home/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
