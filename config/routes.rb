Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [:index, :new, :create, :show, :edit, :update]
  resources :budgets, only: [:new, :create, :show]
end
