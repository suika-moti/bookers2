Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'

  resources :users, only: [:index, :show, :edit, :update]
  resources :homes, only: [:top, :about]
  resources :bookers, only: [:new, :index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
