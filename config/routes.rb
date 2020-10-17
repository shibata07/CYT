Rails.application.routes.draw do

  get 'comments/create'
  get 'comments/destroy'
  root to: 'home#top'
  get 'home/top'
  get 'home/about'
  devise_for :users#, controllers: {   registrations: 'users/registrations',sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show, :index] do
  	resource :relationships, only: [:create, :destroy]
  	get :follows, on: :member
    get :followers, on: :member
  end
  resources :trainings

end

