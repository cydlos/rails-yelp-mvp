Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, except: %i[destroy edit update] do
    resources :reviews, only: %i[new create]
  end
  root to: 'restaurants#index'
end
