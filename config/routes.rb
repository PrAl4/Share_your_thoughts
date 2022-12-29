Rails.application.routes.draw do
 root 'thoughts#index'
 get 'your_home' => 'pages#your_home'
 get 'friends' => 'pages#friends'

resources :thoughts
end
