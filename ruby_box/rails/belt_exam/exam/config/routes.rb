Rails.application.routes.draw do
  root 'users#new'

  # New User
  get   'register'      => 'users#new',         as: 'new_register'
  get   'users/new'     => 'users#new'
  # Create User
  post  'register'      => 'users#create',      as: 'register'
  post  'users'         => 'users#create'
  # Show User
  get   'users/:id'     => 'users#show',        as: 'user' 

  # New Login
  get   'login'         => 'sessions#new',      as: 'new_login'
  get   'sessions/new'  => 'sessions#new'
  # Login
  post  'login'         => 'sessions#create',   as: 'login'
  post  'sessions'      => 'sessions#create'
  # Logout
  delete    'logout'    => 'sessions#destroy',  as: 'logout'
  delete    'sessions'  => 'sessions#destroy'
  #-----------------------------------------------------------------
  #Ideas
  get '/ideas/:user_id'       => 'ideas#index'
  post '/ideas'               => 'ideas#create'
  get '/ideas/:idea_id/show'  => 'ideas#show'
  delete '/delete/:idea_id'   => 'ideas#delete'

  #-----------------------------------------------------------------
  #Users
  get '/'                     => 'users#index'
  get 'user/new'
  get '/ideas/user/:id/show'  => 'users#show'
  put '/update/:id'           => 'users#update'
  delete '/delete'            => 'users#delete'

  #-----------------------------------------------------------------
  post '/likes' => 'likes#create'
  delete '/user/:user_id/ideas/:idea_id/unlike' => 'likes#delete'
end
