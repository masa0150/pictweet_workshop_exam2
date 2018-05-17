Rails.application.routes.draw do
  devise_for :users
  root 'users#show'
  resources :tweets, only: [:index, :show, :new, :craete, :destroy, :edit, :update] do
  resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
