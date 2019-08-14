Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]  




  # get '/heroines/new', to: "heroines#new"
  # post '/heroines', to: "heroines#create"
end
