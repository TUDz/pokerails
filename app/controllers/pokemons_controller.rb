class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
    @pokemon_types = PokemonType.all
  end

  def create
  end

  def index
    @pokemons = Pokemon.all
  end
end
