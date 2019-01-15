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

ActiveRecord::Schema.define(version: 2019_01_15_142405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.date "date"
    t.string "type"
    t.string "location"
    t.boolean "acquittement"
    t.bigint "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_alerts_on_band_id"
  end

  create_table "band_data", force: :cascade do |t|
    t.integer "battery"
    t.integer "bpm"
    t.integer "temperature"
    t.string "location"
    t.integer "pas"
    t.bigint "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_band_data_on_band_id"
  end

  create_table "bands", force: :cascade do |t|
    t.date "last_connexion"
    t.boolean "wear"
    t.bigint "user_id"
    t.bigint "bridge_id"
    t.text "b_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bridge_id"], name: "index_bands_on_bridge_id"
    t.index ["user_id"], name: "index_bands_on_user_id"
  end

  create_table "bridges", force: :cascade do |t|
    t.string "location"
    t.string "fugue"
    t.date "last_connexion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "role"
    t.text "p_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "identifiant"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alerts", "bands"
  add_foreign_key "band_data", "bands"
  add_foreign_key "bands", "bridges"
  add_foreign_key "bands", "users"
end
