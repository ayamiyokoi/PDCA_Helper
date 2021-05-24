Rails.application.routes.draw do
  devise_for :users
  resources :reflections
  root :to =>'reflections#top'
  resources :users
  resources :groups, only: [:new, :create, :edit, :update, :index]
  get 'reflections/topics' => 'reflections#topics', as: 'topics'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
