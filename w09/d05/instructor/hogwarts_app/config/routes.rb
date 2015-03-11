HogwartsApp::Application.routes.draw do

  root "welcome#index"

  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show]

end
