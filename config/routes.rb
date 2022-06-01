Rails.application.routes.draw do
  resources :cities, only: [:index, :show, :new, :create]
  resources :items, only: [:index, :show, :new, :create, :destroy, :update, :edit]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"
end
