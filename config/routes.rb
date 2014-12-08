Rails.application.routes.draw do

  root 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  post 'myprofile' => 'users#create'
  get 'myprofile' => 'users#create'
  post 'myprofile' => 'users#add'
  get 'home' => 'events#show'
  
  resources :users
  resources :events


end
