Cookbook::Application.routes.draw do
  

  resources :ingredients
  resources :recipes
  
  #--- Static ---#
  root 'static#home'
  get '/about', to: "static#about"
  get '/contact', to:"static#contact"

end
