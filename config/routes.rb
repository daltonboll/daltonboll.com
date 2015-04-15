Rails.application.routes.draw do

  devise_for :users
  resources :posts do
    resources :comments
  end

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


  #Last route in routes.rb, used for 404 routing errors
  match '*a', :to => 'errors#file_not_found', via: :all
end
