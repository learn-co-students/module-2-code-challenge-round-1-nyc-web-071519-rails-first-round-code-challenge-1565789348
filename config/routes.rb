Rails.application.routes.draw do

  get 'heroines/search', to: 'heroines#search', as: 'search'

  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]  

  
end
