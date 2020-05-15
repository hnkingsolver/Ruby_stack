Rails.application.routes.draw do
  root 'surveys#new'
  post 'surveys' => 'surveys#submit'
  get 'result' => 'surveys#result'
end
