Rails.application.routes.draw do

  root 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'signup' => 'users#new'
  get 'myprofile' => 'users#show'
  
  resources :users
  resources :events


end
