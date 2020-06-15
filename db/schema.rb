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

ActiveRecord::Schema.define(version: 2020_06_07_183806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fabrics", force: :cascade do |t|
    t.string "fabric_type"
    t.string "color"
    t.string "size"
    t.string "description"
    t.string "name"
    t.string "pic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flosses", force: :cascade do |t|
    t.string "brand"
    t.string "color"
    t.string "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "needles", force: :cascade do |t|
    t.string "needle_type"
    t.string "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notions", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "size"
    t.string "description"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patterns", force: :cascade do |t|
    t.integer "brand", default: 0
    t.string "number"
    t.string "front_pic"
    t.string "back_pic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "pattern_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pattern_id"], name: "index_projects_on_pattern_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shopping_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "yarns", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "color"
    t.string "size"
    t.string "lot"
    t.string "pic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "projects", "patterns"
  add_foreign_key "projects", "users"
  add_foreign_key "shopping_lists", "users"
end
