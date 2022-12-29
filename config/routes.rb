Rails.application.routes.draw do
 root 'thoughts#index', as: 'home'
 get 'your_home' => 'pages#your_home', as: 'your_home'
 get 'friends' => 'pages#friends'
  get 'destroy_thought' => 'thoughts#destroy'

resources :thoughts do
  resources :comments
end
end
