Semesternest::Application.routes.draw do
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  # get "landing_pages/home"
  # get "details/home"
  # get "result_lists/home"
  get "/register", :to => 'users#new'
  get "/forgot_password", :to => 'users#forgot_password'
  get "/home", :to => 'landing_pages#home'
  get "/about", :to => 'landing_pages#about'
  get "/news", :to => 'landing_pages#news'
  get "/underconstruction", :to => 'landing_pages#underconstruction'
  get "/results", :to => 'result_lists#home'
  get "/details", :to => 'details#home'
  get "/signin", :to => 'sessions#new'
  delete "/signout", :to => 'sessions#destroy'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'landing_pages#home'

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
