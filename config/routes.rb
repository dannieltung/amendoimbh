Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [:new, :create, :show]
  resources :budgets, only: [:new, :create, :show]
end
