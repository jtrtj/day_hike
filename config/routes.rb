Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :trips, only: [:show, :index]
  resources :trails, only: [:show, :index]
end
