Rails.application.routes.draw do
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
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
