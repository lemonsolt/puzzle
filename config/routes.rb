Rails.application.routes.draw do
  namespace :users do
    get 'puzzle_images/index'
    get 'puzzle_images/show'
    get 'puzzle_images/new'
    get 'puzzle_images/edit'
  end
  devise_for :users
  namespace :users do
    get 'puzzules/index'
    get 'puzzules/new'
    get 'puzzules/show'
    get 'puzzules/edit'
  end
  namespace :users do
    get 'posts/index'
    get 'posts/new'
    get 'posts/show'
    get 'posts/edit'
  end
  namespace :users do
    get 'homes/top'
  end
  devise_for :admins
  get 'posts/index'
  get 'posts/new'
  get 'posts/show'
  get 'posts/edit'
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
