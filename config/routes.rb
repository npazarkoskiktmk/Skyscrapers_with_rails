Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :cars
  resources :books do
    resources :feedbacks
  end

  get 'pages/about'
  get 'pages/index'
  get 'pages/signin'
  post 'pages/signin'

  root 'pages#index'
end
