Rails.application.routes.draw do
  root 'products#index'
  namespace :admin do
    resources :products
    resources :orders
    get 'orders', to: 'orders#index'
    root 'products#index'
  end
  resources :products, only: [:index, :show]
  resources :cart_items, only: [:create, :update, :destroy]
  resources :orders
  resources :users
  get    'cart',     to: 'cart#index'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
