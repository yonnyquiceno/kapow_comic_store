Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users
  get '/comics', to: 'products#index', as: 'products'
  get '/add-comics', to: 'products#new', as: 'new_product'
  post '/add-comics', to: 'products#create', as: 'create_product'
end
