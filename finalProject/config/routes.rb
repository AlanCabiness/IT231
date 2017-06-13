Rails.application.routes.draw do
  resources :products
  get 'reports/products'

  get 'reports/users'

  get 'main/index'

  get 'main/about'

  get 'main/contact'

  get 'main/help'

  get 'main/privacy'

  get 'main/search'

  get 'main/cart'

  get 'reports/listing'

  root 'main#about'

  post 'main/search'

  get 'main/createUser'

  get 'main/login'

  get 'main/logout'

  post 'main/createUser'

  post 'main/login'

  get 'main/saveList'

  get 'main/removeItems'

  post 'main/saveList'

  post 'main/removeItems'

  get 'main/checkout'

  post 'main/checkout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
