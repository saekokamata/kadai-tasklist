Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  #get 'users/index'
  #get 'users/show'
  #get 'users/new'
  #get 'users/create'
  root to: 'tasks#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #CRUD + index: show の補助ページ* + new: 新規作成用のフォームページ + edit: 更新用のフォームページ
  #resources :tasks

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
end
