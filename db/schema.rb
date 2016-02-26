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

ActiveRecord::Schema.define(version: 20160225225647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auction_parts", force: :cascade do |t|
    t.string   "Description"
    t.string   "PartNum"
    t.string   "Manufacturer"
    t.integer  "Qty"
    t.decimal  "Minimum_Cycles_Remaining"
    t.integer  "Lead_Time"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "part_id"
  end

  add_index "auction_parts", ["part_id"], name: "index_auction_parts_on_part_id", using: :btree

  create_table "inventory_parts", force: :cascade do |t|
    t.string   "Description"
    t.string   "PartNum"
    t.string   "SerialNum"
    t.integer  "Qty"
    t.string   "Manufacturer"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "part_id"
    t.boolean  "in_auction"
  end

  add_index "inventory_parts", ["part_id"], name: "index_inventory_parts_on_part_id", using: :btree

  create_table "parts", force: :cascade do |t|
    t.string   "Description"
    t.string   "PartNum"
    t.integer  "MinQty"
    t.string   "Manufacturer"
    t.decimal  "MfgPrice"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "auction_parts", "parts"
  add_foreign_key "inventory_parts", "parts"
end
