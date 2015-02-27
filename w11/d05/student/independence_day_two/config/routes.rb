Rails.application.routes.draw do
  root 'welcome#index'
  resources :countries, :only => [:show, :update]
end
