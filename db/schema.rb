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

ActiveRecord::Schema.define(version: 20150220231715) do

  create_table "beer_matches", force: :cascade do |t|
    t.integer  "beer_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "beer_matches", ["beer_id"], name: "index_beer_matches_on_beer_id"
  add_index "beer_matches", ["location_id"], name: "index_beer_matches_on_location_id"

  create_table "beers", force: :cascade do |t|
    t.string   "name"
    t.string   "label_url"
    t.text     "description"
    t.string   "beer_type"
    t.string   "brewery"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "beer_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favorites", ["beer_id"], name: "index_favorites_on_beer_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
