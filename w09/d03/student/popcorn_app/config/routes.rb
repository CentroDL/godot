Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  resources :movies
end
