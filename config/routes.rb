Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles
  resources :categories
  resources :products

  root 'welcome#index'
end
