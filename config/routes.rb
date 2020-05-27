Rails.application.routes.draw do
  get 'logout' => "sessions#destroy", :as => "logout"
  get 'login' => "sessions#new", :as => "login"
  get 'signup' => "members#new", :as => "signup"
  root :to => "members#new"
  resources :coach_reviews
  resources :gym_reviews
  resources :equipment, only: [:index, :show]
  resources :members, only: [:show, :new, :create, :edit, :update, :delete]
  resources :specialties, only: [:index, :show]
  resources :coaches, only: [:index, :show]
  resources :gyms, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
