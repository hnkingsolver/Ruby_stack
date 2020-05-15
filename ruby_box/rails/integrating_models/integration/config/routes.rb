Rails.application.routes.draw do
  # get 'users/index'

  # get 'users/new'

  # get 'users/create'

  # get 'users/show'

  # get 'users/edit'

  # get 'users/update'

  get 'users/total'

  # get 'users/destroy'
  resources :users

  # get "users" => "users#index"
  # get "users/new" => "users#new"
  # get "users/total" => "users#total"
  # get "users/:id" => "users#show"
  # get "users/:id/edit" => "users#edit"
  # post "users" => "users#create"
end
