Rails.application.routes.draw do
  root 'static_pages#home'

  resources :reviews, only: [:index, :new, :create]
end
