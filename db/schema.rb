# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_27_105222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adoptions", force: :cascade do |t|
    t.datetime "initial_call"
    t.datetime "meet_pet"
    t.boolean "adoption"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "pet_id", null: false
    t.bigint "user_id", null: false
    t.index ["pet_id"], name: "index_adoptions_on_pet_id"
    t.index ["user_id"], name: "index_adoptions_on_user_id"
  end

  create_table "pet_traits", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "pet_id", null: false
    t.bigint "trait_option_id", null: false
    t.index ["pet_id"], name: "index_pet_traits_on_pet_id"
    t.index ["trait_option_id"], name: "index_pet_traits_on_trait_option_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.string "description"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "preferences", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "trait_options_id", null: false
    t.index ["trait_options_id"], name: "index_preferences_on_trait_options_id"
    t.index ["user_id"], name: "index_preferences_on_user_id"
  end

  create_table "shortlists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "pet_id", null: false
    t.index ["pet_id"], name: "index_shortlists_on_pet_id"
    t.index ["user_id"], name: "index_shortlists_on_user_id"
  end

  create_table "trait_options", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "trait_id", null: false
    t.index ["trait_id"], name: "index_trait_options_on_trait_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "trait_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "phone"
    t.string "first_name"
    t.string "last"
    t.string "string"
    t.boolean "is_admin"
  end

  add_foreign_key "adoptions", "pets"
  add_foreign_key "adoptions", "users"
  add_foreign_key "pet_traits", "pets"
  add_foreign_key "pet_traits", "trait_options"
  add_foreign_key "preferences", "trait_options", column: "trait_options_id"
  add_foreign_key "preferences", "users"
  add_foreign_key "shortlists", "pets"
  add_foreign_key "shortlists", "users"
  add_foreign_key "trait_options", "traits"
end
