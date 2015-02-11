Rails.application.routes.draw do
  root 'welcome#show'
  resources :users
  resources :movies
end
