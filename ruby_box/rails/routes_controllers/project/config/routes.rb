Rails.application.routes.draw do
  get 'pizzas/index'

  get 'pizzas/new'

  get 'pizzas/create'

  get 'pizzas/show'

  get 'pizzas/edit'

  get 'pizzas/update'

  resources :pizzas
end
