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

ActiveRecord::Schema.define(version: 2021_03_29_215703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_photos_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "operation_type"
    t.string "address"
    t.string "phone"
    t.decimal "price", precision: 7, scale: 2
    t.string "property_type"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.decimal "area", precision: 7, scale: 2
    t.boolean "pet"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "property_users", force: :cascade do |t|
    t.boolean "favorite"
    t.boolean "closed"
    t.boolean "contacted"
    t.bigint "user_id", null: false
    t.bigint "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_property_users_on_property_id"
    t.index ["user_id"], name: "index_property_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "role", default: "homeSeeker", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "photos", "properties"
  add_foreign_key "property_users", "properties"
  add_foreign_key "property_users", "users"
end
