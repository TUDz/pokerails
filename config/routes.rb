Rails.application.routes.draw do
  get 'pokemons', to: 'pokemons#index', as: 'pokemons'
  get 'pokemons/new', to: 'pokemons#new', as: 'new_pokemon'
  post 'pokemons', to: 'pokemons#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/")
  root "pokemons#index"
end
