Rails.application.routes.draw do
  get 'topics/index'
  devise_for :users
  resources :reflections
  root :to =>'reflections#top'
  resources :users
  resources :groups, only: [:new, :create, :edit, :update, :index]
  resources :topics, only: [:index]
  resources :favorites, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update] do
    get :favorites, on: :collection
  end

  resources :reflections, expect: [:index] do
    resource :favorites, only: [:create, :destroy]
  end
end
