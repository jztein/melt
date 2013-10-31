Forest::Application.routes.draw do
  get "home/index"
  match "home/index", :to => "home#index"
  root to: "home#index"

  resources :hangouts
end
