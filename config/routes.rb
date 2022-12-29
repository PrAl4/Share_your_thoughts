Rails.application.routes.draw do
 root 'thoughts#index', as: 'home'
 get 'your_home' => 'pages#your_home', as: 'your_home'
 get 'friends' => 'pages#friends'

resources :thoughts
end
