Rails.application.routes.draw do
  root to: 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies, only: [:index]

  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[index show new create]
  end

end
