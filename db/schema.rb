# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_03_160140) do
  create_table "pokemon_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "id_pokedex"
    t.string "name"
    t.integer "type_01"
    t.integer "type_02"
    t.integer "evolves_from"
    t.integer "evolves_to"
    t.text "description"
    t.integer "stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url_image"
  end

  add_foreign_key "pokemons", "pokemon_types", column: "type_01"
  add_foreign_key "pokemons", "pokemon_types", column: "type_02"
  add_foreign_key "pokemons", "pokemons", column: "evolves_from"
  add_foreign_key "pokemons", "pokemons", column: "evolves_to"
end
