Rails.application.routes.draw do
  resources :order_meals
  resources :orders
  resources :situations
  resources :meals
  root 'menu#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :categories
  get 'users', :to => 'users#index'
end
