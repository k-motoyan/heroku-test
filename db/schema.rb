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

ActiveRecord::Schema.define(version: 20170524083125) do

  create_table "end_points", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "path", default: "", null: false
    t.integer "http_method"
    t.text "response"
    t.boolean "proxyable", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["http_method", "path"], name: "index_end_points_on_http_method_and_path", unique: true
  end

  create_table "headers", force: :cascade do |t|
    t.integer "end_points_id"
    t.string "key", default: "", null: false
    t.string "value", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_points_id"], name: "index_headers_on_end_points_id"
  end

  create_table "settings", force: :cascade do |t|
    t.string "proxy_url", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
