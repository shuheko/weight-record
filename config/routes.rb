Rails.application.routes.draw do
  devise_for :users
  get 'weights/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "weights#index"
  resources :weights, only: [:index, :new, :create, :destroy]
end
