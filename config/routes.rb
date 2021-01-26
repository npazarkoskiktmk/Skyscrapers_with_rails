Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/index'
  root 'pages#index'
  get 'pages/signin'
  post 'pages/signin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
