Rails.application.routes.draw do
  root to: 'tasks#index'

  #CRUD + index: show の補助ページ* + new: 新規作成用のフォームページ + edit: 更新用のフォームページ
  resources :tasks
end
