# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170923210544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "passengers", force: :cascade do |t|
    t.integer "user_id"
  end

  add_index "passengers", ["user_id"], name: "index_passengers_on_user_id", using: :btree

  create_table "routes", force: :cascade do |t|
    t.float   "distance",   default: 0.0, null: false
    t.hstore  "road_taken", default: {},  null: false
    t.integer "vehicle_id"
  end

  add_index "routes", ["vehicle_id"], name: "index_routes_on_vehicle_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             default: "",          null: false
    t.string   "last_name",              default: "",          null: false
    t.string   "email",                  default: "",          null: false
    t.string   "encrypted_password",     default: "",          null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,           null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "role",                   default: "passenger", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicle_entries", force: :cascade do |t|
    t.integer "passenger_id"
    t.integer "vehicle_id"
  end

  add_index "vehicle_entries", ["passenger_id"], name: "index_vehicle_entries_on_passenger_id", using: :btree
  add_index "vehicle_entries", ["vehicle_id"], name: "index_vehicle_entries_on_vehicle_id", using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string "licence_plate", null: false
    t.string "color",         null: false
    t.string "brand_car",     null: false
  end

  add_foreign_key "passengers", "users"
  add_foreign_key "routes", "vehicles"
  add_foreign_key "vehicle_entries", "passengers"
  add_foreign_key "vehicle_entries", "vehicles"
end
