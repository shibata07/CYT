Rails.application.routes.draw do
  get 'home/top'
  get 'home/about'
  devise_for :users#, controllers: {   registrations: 'users/registrations',sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index]
end