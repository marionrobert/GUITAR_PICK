Rails.application.routes.draw do
  get 'guitar/resources'
  devise_for :users
  root to: "pages#home"

  resources :guitars

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
