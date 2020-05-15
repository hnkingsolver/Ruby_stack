Rails.application.routes.draw do
  root 'rpgs#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'destroy' => 'rpgs#destroy'
  post 'process' => 'rpgs#create'
end
