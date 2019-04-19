Rails.application.routes.draw do

  root :to => "pages#home"
  resources :dogs
  resources :owners
  resources :services
  resources :users
  resources :vets
  resources :vaccinations
end
