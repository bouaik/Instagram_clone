Rails.application.routes.draw do
  resources :memos
  resources :users, only: [:index, :show]
  devise_for :users
  root 'home#index'

  get "my_memos", to: "memos#mine"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
