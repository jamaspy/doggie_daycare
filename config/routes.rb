Rails.application.routes.draw do
  get "dogs/search" => "dogs#search"
  root :to => "pages#home"
  resources :dogs
  resources :owners
  resources :services
  resources :users
  resources :vets
  resources :vaccinations
end
