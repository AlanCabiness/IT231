Rails.application.routes.draw do
  resources :movies
  root 'home#Index'

  get 'home/Index'

  get 'home/ClassInfo'

  get 'home/MidtermExam'

  get 'home/genreCount'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
