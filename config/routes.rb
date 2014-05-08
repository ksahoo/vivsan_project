VivsanProject::Application.routes.draw do
  # get "gadgets/index"
  # get "gadgets/new"
  # get "gadgets/create"
  # get "gadgets/show"
  # get "gadgets/edit"
  # get "gadgets/update"
  # get "gadgets/destroy"
  # get "roles/edit"
  # get "roles/update"
  # get "roles/new"
  # get "roles/index"
  # get "roles/create"
  # get "roles/destroy"
  # get "role/new"
  # get "role/index"
  # get "role/create"
  # get "role/destroy"
  # get "new/index"
  # get "new/create"
  # get "new/destroy"
  #get "users/new"
  #get "users/create"
  #get "users/show"
  #get "users/index"
  #get "users/edit"
  #get "users/update"
  #get "users/destroy"
  root :to => "users#sign_in"

  resources :gadgets

  resources :roles

  resources :users_admin

  resources :users do
    collection do
      get 'sign_up'
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
