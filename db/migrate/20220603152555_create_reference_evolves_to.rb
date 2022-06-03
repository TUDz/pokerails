class CreateReferenceEvolvesTo < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :pokemons, :pokemons, column: :evolves_to
  end
end
