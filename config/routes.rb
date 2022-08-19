Rails.application.routes.draw do
  root 'movies#index'
  get 'movies/search', to: 'movies#search', as: :search
  # get 'movies/new'
  # get 'movies/show'
  # get 'movies/create'
  # get 'movies/edit'
  # get 'movies/update'
  # get 'movies/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  resources :movies
  # resources :search, only: %i[index]
  # resources :movies, :search, only: %i[index]
end
