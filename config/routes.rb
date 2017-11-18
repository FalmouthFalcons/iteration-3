Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'

  resources :orders
  resources :users, :controller => 'users_controller'
  resources :sessions
  resources :payment_types
  resources :product_types
  resources :products do
    get 'categoryshow'
  end

  post 'add_to_cart', to: 'orders#add_to_cart'


  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'profile', to: 'users#show', as: 'profile'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
