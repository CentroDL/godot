HogwartsApp::Application.routes.draw do

root "welcomes#index"

resources :houses, only: [:index, :show]
resources :students, only: [:index, :show, :new, :create]

end
