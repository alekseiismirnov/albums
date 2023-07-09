Rails.application.routes.draw do
  resources :pictures
  get 'pages/:page' => 'pages#show'
end
