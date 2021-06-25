Rails.application.routes.draw do
  get 'notices/index'
  get 'notices/show'
  get 'notices/new'
  get 'notices/edit'
  get 'notices/create'
  get 'notices/update'
  get 'notices/destroy'
  get 'notice/index'
  get 'notice/show'
  get 'notice/new'
  get 'notice/edit'
  get 'notice/create'
  get 'notice/update'
  get 'notice/destroy'
  get 'home/index'
  root to: 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
