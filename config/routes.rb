Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :users
  resources :pictures
  get 'pages/:page' => 'pages#show'
end
