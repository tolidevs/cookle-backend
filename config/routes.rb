Rails.application.routes.draw do
  resources :saved_recipes
  resources :user_preferences
  resources :preferences
  resources :users

  post "/login", to: "users#login"

  post "/search-recipes", to: "application#search_recipes"

  post "/recipe", to: "application#recipe"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
