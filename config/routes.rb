Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'charges/new'

  get 'charges/create'

  get 'register/index'

  get 'about' => 'home#about', as: 'about'
  get 'contact' => 'home#contact', as: 'contact'

  get 'index' => 'products#index', as: 'products'

  get 'register' => 'register#index', as: 'register'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources 'products', only: [:index, :show]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  # Load the products#index on GET to /
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
