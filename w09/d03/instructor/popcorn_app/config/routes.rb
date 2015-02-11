Rails.application.routes.draw do
  root 'movies#index'
  resources :users
  resources :movies
end
