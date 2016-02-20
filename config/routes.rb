Rails.application.routes.draw do
  root 'reviews#new'
  resources :reviews
end
