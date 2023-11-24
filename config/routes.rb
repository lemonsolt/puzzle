Rails.application.routes.draw do

  devise_for :users
  devise_for :admins
  get 'homes/top'

  resources :puzzle_images, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments,only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
