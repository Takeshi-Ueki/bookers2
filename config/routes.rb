Rails.application.routes.draw do

  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users

  resources :users, only: [:index, :edit, :update, :show]
  resources :books, only: [:create, :index, :edit, :update, :show, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
