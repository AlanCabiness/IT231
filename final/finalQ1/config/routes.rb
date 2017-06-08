Rails.application.routes.draw do
  get 'main/browseSeries'

  get 'main/search'

  get 'main/browseViewership'

  get 'main/browseRating'

  get 'main/browseShare'

  get 'main/browseDate'

  get 'main/browseNetwork'

  post 'main/search'

  get 'main/login'

  post 'main/login'

  get 'main/createUser'

  post 'main/createUser'

  get 'main/userPage'

  get 'main/logout'

  root 'main#login'

  get 'main/saveList'

  get 'main/removeSeries'

  post 'main/saveList'

  post 'main/removeSeries'
  resources :ratings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
