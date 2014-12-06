Rails.application.routes.draw do
<<<<<<< HEAD
=======
<<<<<<< HEAD
  resources :user_tests
=======
>>>>>>> 10a9dcdd80aaa13f058739e8e73aef77ff5d01bb
  
  root 'login' => 'sessions#new'
  post 'login' => 'session#create'
  delete 'logout' => 'session#destroy'
  
  # get 'myprofile' => 'users#show'
  resources :users
<<<<<<< HEAD
=======
>>>>>>> session
>>>>>>> 10a9dcdd80aaa13f058739e8e73aef77ff5d01bb

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

<<<<<<< HEAD
=======
<<<<<<< HEAD
  # You can have the root of your site routed with "root"
  root 'user_tests#new'

=======
>>>>>>> session
>>>>>>> 10a9dcdd80aaa13f058739e8e73aef77ff5d01bb
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
<<<<<<< HEAD
  resources :users
  resources :events
=======
  #   resources :products
>>>>>>> session

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
