Rails.application.routes.draw do
  resources :meals
  root 'menu#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :categories
end
