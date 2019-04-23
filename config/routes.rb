Rails.application.routes.draw do
  root :to => "pages#home"
  resources :dogs
  resources :owners
  resources :services
  resources :users
  resources :vets
  resources :vaccinations
  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/login" => "session#destroy"
end
