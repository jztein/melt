Forest::Application.routes.draw do
  get "home/index"
  root to: "home#index"

  match "hangouts/index" => "hangouts#index", :via => 'get'
  match "hangouts/new" => "hangouts#new", :via => 'get'
  match "hangouts/edit" => "hangouts#edit", :via => 'get'
  match "hangouts/show" => "hangouts#show", :via => 'get'

  resources :hangouts
end
