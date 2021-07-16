Rails.application.routes.draw do
  get '/history', to: 'history#index'
  resources :notices
  get 'home/index'
  root to: 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
