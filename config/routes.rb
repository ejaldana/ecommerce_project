Rails.application.routes.draw do
  get 'register/index'

  get 'about' => 'home#about', as: 'about'
  get 'contact' => 'home#contact', as: 'contact'

  get 'index' => 'products#index', as: 'products'

  get 'register' => 'register#index', as: 'register'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources 'products', only: [:index, :show]

  # Load the products#index on GET to /
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
