Rails.application.routes.draw do

  root to: 'welcome#index'
  resources :foot_soldiers, :except => [:new, :edit]
  resources :turtles,       :except => [:new, :edit, :create]
  resources :villains,      :except => [:new, :edit, :create]
  resource  :rat,           :only   => [:show, :update]
  resource  :reporter,      :only   => [:show, :update]
end
