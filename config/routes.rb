Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:new, :create, :index, :show, :edit, :destroy]
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]

  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
