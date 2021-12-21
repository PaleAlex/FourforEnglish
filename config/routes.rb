Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#index'

  get 'a-present-for-you', to: 'pages#present'
  get 'corsi', to: 'pages#corsi'
  get 'courses', to: 'pages#courses'
  get 'en', to: 'pages#en'
  get 'full-immersion', to: 'pages#eip'
  get 'masterclass', to: 'pages#mc'

  resources :articles, only: [:new, :create, :index, :destroy]
  resources :posts

end
