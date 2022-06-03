class CreateReferencePokemonType < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :pokemons, :pokemon_types, column: :type_01
    add_foreign_key :pokemons, :pokemon_types, column: :type_02
  end
end
