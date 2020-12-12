Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#index'

  get 'a-present-for-you', to: 'pages#present'
  get 'lessons', to: 'pages#lessons'

  resources :articles, only: [:new, :create, :index, :destroy]

  get 'italian-course', to: 'pages#italian'
end
