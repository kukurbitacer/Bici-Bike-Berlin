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

ActiveRecord::Schema.define(version: 2018_09_05_141007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guide_translations", force: :cascade do |t|
    t.integer "guide_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.text "small_description"
    t.index ["guide_id"], name: "index_guide_translations_on_guide_id"
    t.index ["locale"], name: "index_guide_translations_on_locale"
  end

  create_table "guides", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.text "small_description"
  end

  create_table "tour_translations", force: :cascade do |t|
    t.integer "tour_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "description"
    t.string "location"
    t.index ["locale"], name: "index_tour_translations_on_locale"
    t.index ["tour_id"], name: "index_tour_translations_on_tour_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "location"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "guide_id"
    t.string "photo"
    t.boolean "active", default: true
    t.boolean "first_page", default: false
    t.index ["guide_id"], name: "index_tours_on_guide_id"
    t.index ["user_id"], name: "index_tours_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "tours", "guides"
  add_foreign_key "tours", "users"
end
