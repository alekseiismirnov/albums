# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#index'

  devise_for :users
  resources :users, only: [:show]
  
  resources :pictures do 
    resources :tags, only: [:update]
  end
  resources :tags, only: [:index, :show, :create]

  get 'pages/:page' => 'pages#show'
end
