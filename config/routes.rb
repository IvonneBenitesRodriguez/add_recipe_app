Rails.application.routes.draw do
  resources :recipes
  resources :foods
  devise_for :users, controllers: {
  registrations: 'users/registrations'
}
  root 'users#index'
  resources :users do
    resources :recipes do
      resources :recipe_food
    end
    resources :foods
  end

  get '/public_recipes', to: 'recipes#public_recipes', as: 'public_recipes_recipes'
  get '/shopping_list', to: 'shopping_list#index', as: 'shopping_list'
end
