Rails.application.routes.draw do

  namespace :users do
  end
  devise_for :users
  devise_for :admins

  
  
  scope module: :users do
    root to: "homes#top"
    resources :puzzle_images, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
      resources :comments,only: [:create, :destroy]
    end
    resources :users, only: [:index, :show, :edit, :update, :destroy] do
      
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
