Rails.application.routes.draw do
  root 'store#index', as: 'store_index'
  resources :products

  get '/xyz', to: 'products#index'
  get '/current_time', to: 'application#current_time'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
