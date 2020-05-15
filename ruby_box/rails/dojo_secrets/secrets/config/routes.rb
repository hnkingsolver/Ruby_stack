Rails.application.routes.draw do
  root 'sessions#new'

  get 'secrets/index'

  get 'users/new'
  post 'users/new' => 'users#create'

  get 'users/:id' => 'users#show'

  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id/edit' => 'users#update'

  delete 'users/:id' => 'users#delete'
  #---------------------------------------
  get 'sessions/new'
  post 'sessions/new' => 'sessions#create'
  
  delete 'sessions/:id' => 'sessions#destroy'
  #---------------------------------------
  post 'secrets/new' => 'secrets#create'
  delete 'secrets/:id' => 'secrets#delete' 
  get 'secrets' => 'secrets#index'
  #---------------------------------------
  post 'likes/:id' => 'likes#create'
  delete 'likes/:id' => 'likes#delete'
end
