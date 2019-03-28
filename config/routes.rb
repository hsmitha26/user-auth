Rails.application.routes.draw do
  root to: 'welcome#main'
  resources :users, only: [:new, :create, :show]
end
