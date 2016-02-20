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

ActiveRecord::Schema.define(version: 20160220062008) do

  create_table "accounts", force: :cascade do |t|
    t.string   "type",           limit: 255
    t.string   "nickname",       limit: 255
    t.decimal  "rewards",                    precision: 16, scale: 2
    t.decimal  "balance",                    precision: 16, scale: 2
    t.string   "account_number", limit: 255
    t.string   "customer_id",    limit: 255
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  create_table "merchants", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "category",      limit: 255
    t.string   "street_number", limit: 255
    t.string   "street_name",   limit: 255
    t.string   "city",          limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "type",          limit: 255
    t.datetime "purchase_date"
    t.decimal  "amount",                    precision: 16, scale: 2
    t.string   "status",        limit: 255
    t.integer  "merchant_id",   limit: 4
    t.integer  "account_id",    limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "purchases", ["account_id"], name: "index_purchases_on_account_id", using: :btree
  add_index "purchases", ["merchant_id"], name: "index_purchases_on_merchant_id", using: :btree

end
