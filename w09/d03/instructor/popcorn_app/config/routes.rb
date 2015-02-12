Rails.application.routes.draw do
  root 'welcome#show'
  resources :users do
    resources :purchases
  end
  resources :movies
end
