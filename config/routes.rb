Rails.application.routes.draw do
  
  resources :comments

  resources :posts

  get 'errors/file_not_found'

  get 'errors/unprocessable'

  get 'errors/internal_server_error'

  #resources :messages, only: [:new, :create]
  # Messages routing
  get 'contact' => 'messages#contact'
  post 'messages' => 'messages#create'
  get 'message_received' => 'pages#message_received'

  get 'users/new'

  # Redirect the root path (home page)
  root 'pages#about'

  # Redirect 'navmenu'-style pages
  get 'help' => 'pages#help'
  #get 'contact' => 'pages#contact'
  get 'blog' => 'pages#blog'
  get 'resume' => 'pages#resume'
  get 'projects' => 'pages#projects'
  
  # Redirect signup page
  get 'signup'  => 'users#new'

  # For custom error pages
  match '/404', to: 'errors#file_not_found', via: :all
  match '/422', to: 'errors#unprocessable', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all

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

  #Last route in routes.rb, used for 404 routing errors
  match '*a', :to => 'errors#file_not_found', via: :all
end
