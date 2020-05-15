Rails.application.routes.draw do
  # get 'displays/index'

  # get 'displays/hello'

  # get 'displays/say'

  # get 'displays/times'

  # get 'displays/restart'
  root "display#index"
  get "hello" => "display#hello"
  # the :name param becomes options
  get "say/hello(/:name)" => "display#say"
  get "times" => "display#times"
  get "times/restart" => "display#restart"
end
