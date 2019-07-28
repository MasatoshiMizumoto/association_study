Rails.application.routes.draw do
  # get 'relationships/create'
  # get 'relationships/destroy'
  # get 'comments/new'
  # get 'comments/index'
  # get 'comments/show'
  get 'comments/create'
  get 'comments/destroy'
  # get 'comments/show'
  # get 'comments/create'
  # get 'comments/destroy'
  # get 'favorites/create'
  # get 'favorites/destroy'
  root 'tweets#index'
  devise_for :users

  # get 'tweets/new'
  # get 'tweets/index'
  # get 'tweets/show'
  # get 'tweets/create'
  # get 'users/index'
  # get 'users/show'

  
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
    resource :comments, only: [:create, :destroy]
  end

  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

