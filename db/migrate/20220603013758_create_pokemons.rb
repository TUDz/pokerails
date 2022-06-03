class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.integer :id_pokedex
      t.string :name
      t.integer :type_01
      t.integer :type_02
      t.integer :evolves_from
      t.integer :evolves_to
      t.text :description
      t.integer :stars

      t.timestamps
    end
  end
end
