Rails.application.routes.draw do
  root 'reviews#new'
  resources :reviews, only: [:index, :new, :create]
end
