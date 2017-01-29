Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users
  get '/comics', to: 'products#index', as: 'products'
  get '/add-comics', to: 'products#new', as: 'new_product'
end
