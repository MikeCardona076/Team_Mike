Rails.application.routes.draw do
  resources :barracks
  resources :services
  resources :teams
  resources :soldiers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
