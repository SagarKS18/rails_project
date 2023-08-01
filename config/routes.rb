Rails.application.routes.draw do
  get 'shop/index'
  resources :line_items
  resources :carts
  get 'home/index'
  get 'gallery/index'
  get 'gallery/checkout'
  post 'gallery/checkout'
  get 'gallery/purchase_complete'
  resources :stores
  get 'admin/login'
  post 'admin/login'

  get 'gallery/search'
  post 'gallery/search'

  get 'admin/logout'
  devise_for :controllers
  devise_for :users

  root to: 'gallery#index'
  get '/users/sign_out'

  get 'home/about'
  get 'home/news'
  get 'home/contact'
  get 'shop/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
