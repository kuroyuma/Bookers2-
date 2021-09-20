Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "home/about" => "home#about"
  resources :users, only: [:new, :create, :index, :show, :edit, :destroy]do
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
end

  resources :users, only: [:show, :edit, :update]
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
