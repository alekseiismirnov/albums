Rails.application.routes.draw do
  root to: 'pages#index'
  resources :pictures
  get 'pages/:page' => 'pages#show'
end
