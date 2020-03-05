Rails.application.routes.draw do
  resources :saved_recipes
  resources :user_preferences
  resources :preferences
  resources :users

  post "/get-recipe", to: "application#get_recipe"
  post "/users/create", to: "users#create"

  post "/login", to: "users#login"
  post "/create", to: "users#create"

  post "/search-recipes", to: "application#search_recipes"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
