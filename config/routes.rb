Rails.application.routes.draw do
  get '/users/:code', to: 'users#show'
  get '/payments/:code', to: 'payments#show'

  resources :users
  resources :payments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "posts#index"
end
