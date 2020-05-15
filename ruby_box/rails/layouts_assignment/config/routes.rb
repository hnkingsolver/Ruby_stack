Rails.application.routes.draw do
  get 'posts' => 'posts#index'
  get 'users' => 'users#index'
  post 'users/create' => 'users#create'
  post 'posts/create' => 'posts#create'
end
