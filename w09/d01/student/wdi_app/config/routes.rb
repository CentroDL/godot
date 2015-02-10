Rails.application.routes.draw do
  root 'greetings#index'

  get 'instructors' => 'instructors#index'
  get 'instructors/pj' => 'instructors#pj'
  get 'instructors/travis' => 'instructors#travis'
  get 'instructors/phil' => 'instructors#phil'

  get 'producer' => 'producers#index'
end
