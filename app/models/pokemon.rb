class Pokemon < ApplicationRecord
  validates :name, :description, presence: true
  validates :id_pokedex, uniqueness: true
end
