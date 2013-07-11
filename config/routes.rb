Cookbook::Application.routes.draw do

  get '/admin', to: "admin#dashboard"

  get '/dashboard', to: 'users#show'
  
  get '/login', to: "sessions#new"
  get '/logout', to: "sessions#destroy"

  get '/myrecipe/:id', to: 'users#show_recipe'

  match '/recipes/search', to: 'recipes#search', via: [:get,:post], as: :search_recipes
  match '/ingredients/search', to: 'ingredients#search', via: [:get,:post], as: :search_ingredients

  resources :sessions
  resources :users
  resources :ingredients
  resources :recipes
  
  #--- Static ---#
  root 'static#home'
  get '/about', to: "static#about"
  get '/contact', to:"static#contact"

end
