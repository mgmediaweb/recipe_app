# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
    resources :recipefood, only: %i[create destroy]
  end
  resources :foods
  get '/public_recipes', to: 'recipes#public'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'foods#index'
end
