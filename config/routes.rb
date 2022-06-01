Rails.application.routes.draw do
  resources :cities, only: [:index, :show, :new, :create]
  resources :items, only: [:index, :show, :new, :create, :destroy, :update, :edit]

  root "items#index"
end
