HogwartsApp::Application.routes.draw do

root "welcomes#index"

resource :house, only: [:index, :show]
resources :students, only: [:index, :show]

end
