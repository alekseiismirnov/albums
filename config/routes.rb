Rails.application.routes.draw do
  devise_for :users
  resources :pictures
  get 'pages/:page' => 'pages#show'
end
