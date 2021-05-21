Rails.application.routes.draw do
  devise_for :users
  resources :reflections
  root :to =>'reflections#top'
  resources :users, :only => [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
