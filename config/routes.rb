Rails.application.routes.draw do

  get 'comments/create'
  get 'comments/destroy'
  root to: 'home#top'
  get 'home/top'
  get 'home/about'
  devise_for :users#, controllers: {   registrations: 'users/registrations',sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index]
  resources :trainings do
  	resources :comments, only: [:create, :edit, :update, :destroy]
  end
end

