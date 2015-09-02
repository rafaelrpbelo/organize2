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

ActiveRecord::Schema.define(version: 20150731235328) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.decimal  "start_balance", default: 0.0
    t.decimal  "balance",       default: 0.0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "movements", force: :cascade do |t|
    t.string   "description"
    t.decimal  "value"
    t.boolean  "paid",        default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "kind"
    t.date     "paid_at"
    t.string   "category"
    t.integer  "account_id"
  end

  add_index "movements", ["account_id"], name: "index_movements_on_account_id"
  add_index "movements", ["paid"], name: "index_movements_on_paid"
  add_index "movements", ["paid_at"], name: "index_movements_on_paid_at"

end
