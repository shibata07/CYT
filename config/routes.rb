Rails.application.routes.draw do

  root to: 'home#top'
  get 'home/top'
  get 'home/about'
  get 'users/search'
  devise_for :users, controllers: {   registrations: 'users/registrations',sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: %i[show] do
  	resource :relationships, only: %i[create destroy]
  	get :follows, on: :member
    get :followers, on: :member
  end
  resources :trainings do
    resources :comments, only: %i[create destroy]
  end

  resources :weights, only: %i[index create destroy]

end

