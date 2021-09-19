Rails.application.routes.draw do
  resource :users, only: [:new, :create, :index, :show, :edit, :destroy]
  resource :books, only: [:new, :create, :index, :show, :edit, :destroy]
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
