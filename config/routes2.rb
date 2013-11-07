Forest::Application.routes.draw do
  get "home/index"
  match "home/index", :to => "home#index"
  root to: "home#index"

  match "home/channel", :to => "home#channel", via: 'get'

  resources :hangouts
end
