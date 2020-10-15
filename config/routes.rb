Rails.application.routes.draw do

  root to: 'home#top'
  get 'home/top'
  get 'home/about'
  devise_for :users#, controllers: {   registrations: 'users/registrations',sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index]
  resources :trainings
end

