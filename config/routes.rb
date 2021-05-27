Rails.application.routes.draw do
  get 'topics/index'
  devise_for :users
  resources :reflections do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  root :to =>'reflections#top'
  resources :users do
    get :favorites, on: :collection
  end
  resources :groups, only: [:new, :create, :edit, :update, :index]
  resources :topics, only: [:index]
  resources :favorites, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
