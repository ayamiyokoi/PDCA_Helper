Rails.application.routes.draw do

  devise_for :users
  get 'reflections/about' => 'reflections#about', as: 'about'
  resources :reflections do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy, :show]
  end

  root :to =>'reflections#top'


  resources :users do
    get :favorites, on: :collection
  end

  resources :groups, only: [:new, :create, :edit, :update, :index]
  resources :topics, only: [:index, :show]
  resources :favorites, only: [:index]
  resources :user, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
