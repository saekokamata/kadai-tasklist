Rails.application.routes.draw do
  #get 'users/index'
  #get 'users/show'
  #get 'users/new'
  #get 'users/create'
  root to: 'tasks#index'

  #CRUD + index: show の補助ページ* + new: 新規作成用のフォームページ + edit: 更新用のフォームページ
  #resources :tasks

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
end
