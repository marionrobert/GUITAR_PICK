Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "dashboard", to: "pages#dashboard"

  resources :guitars do
    resources :rentals, only: %i[ new create]
  end

  resources :rentals, except: %i[ new create] do
    get "accept", to: "rentals#accept"
    get "decline", to: "rentals#decline"
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
