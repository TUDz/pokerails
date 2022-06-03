class PokemonType < ApplicationRecord
  validates name, presence: true
end
