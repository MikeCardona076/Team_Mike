Rails.application.routes.draw do
  resources :teams
  resources :services
  resources :barracks
  resources :soldiers
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
