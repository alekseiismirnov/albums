# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#index'

  devise_for :users
  resources :pictures
  resources :users, only: [:show]
  resources :tags
  get 'pages/:page' => 'pages#show'
end
