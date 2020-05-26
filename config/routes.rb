Rails.application.routes.draw do
  resources :coach_reviews
  resources :gym_reviews
  resources :equipment
  resources :members
  resources :specialties
  resources :coaches
  resources :gyms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
