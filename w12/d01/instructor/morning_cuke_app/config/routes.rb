Rails.application.routes.draw do

  root 'welcome#index'
  get '/posts' => 'posts#index'
end
