Rails.application.routes.draw do
  resources :sports
  resources :promotions
  root 'home#index'

  get 'reports/listing'

  get 'reports/customers'

  get 'reports/products'

  get 'reports/sales'

  resources :customers
  resources :products
  resources :sales
  get 'home/index'

  get 'home/about'

  get 'home/contact'

  get 'home/search'

  get 'home/settings'

  get 'home/privacy'

  get 'home/help'

  get 'home/cart'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
