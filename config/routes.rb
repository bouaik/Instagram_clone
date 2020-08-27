Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show]
  resource :friendships, only: [:create, :destroy]
  resources :memos

  root 'memos#index'

  get "my_memos", to: "memos#mine"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
