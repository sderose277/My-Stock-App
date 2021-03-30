Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  get 'home/about'
  root 'home#index'
 get 'users/sign_out'

  post "/" => 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
