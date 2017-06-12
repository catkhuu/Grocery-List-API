# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170612221046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredient_amounts", force: :cascade do |t|
    t.integer "ingredient_amount", null: false
    t.string "units", null: false
    t.bigint "test_recipe_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_ingredient_amounts_on_ingredient_id"
    t.index ["test_recipe_id"], name: "index_ingredient_amounts_on_test_recipe_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "is_specialty", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.string "title", default: "Untitled"
    t.datetime "shopping_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shopping_lists_on_user_id"
  end

  create_table "shopping_lists_test_recipes", force: :cascade do |t|
    t.bigint "shopping_list_id"
    t.bigint "test_recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopping_list_id"], name: "index_shopping_lists_test_recipes_on_shopping_list_id"
    t.index ["test_recipe_id"], name: "index_shopping_lists_test_recipes_on_test_recipe_id"
  end

  create_table "specialty_purchase_destinations", force: :cascade do |t|
    t.string "company_name", null: false
    t.string "website"
    t.string "address"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_specialty_purchase_destinations_on_ingredient_id"
  end

  create_table "test_recipes", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ingredient_amounts", "ingredients"
  add_foreign_key "ingredient_amounts", "test_recipes"
  add_foreign_key "shopping_lists", "users"
  add_foreign_key "shopping_lists_test_recipes", "shopping_lists"
  add_foreign_key "shopping_lists_test_recipes", "test_recipes"
  add_foreign_key "specialty_purchase_destinations", "ingredients"
end
