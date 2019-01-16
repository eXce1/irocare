Rails.application.routes.draw do
  get 'pages/dashboard'
  get 'pages/account'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bridges, only: [:show, :edit, :update, :index]
end
