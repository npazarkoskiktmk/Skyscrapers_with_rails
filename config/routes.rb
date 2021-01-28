Rails.application.routes.draw do
  resources :cars
  resources :books

  get 'pages/about'
  get 'pages/index'
  get 'pages/signin'
  post 'pages/signin'

  root 'pages#index'
end
