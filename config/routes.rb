Rails.application.routes.draw do
  get 'topics/index'
  devise_for :users
  resources :reflections
  root :to =>'reflections#top'
  resources :users
  resources :groups, only: [:new, :create, :edit, :update, :index]
  resources :topics, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
