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

ActiveRecord::Schema.define(version: 20160220090803) do

  create_table "accounts", force: :cascade do |t|
    t.string   "account_type", limit: 255
    t.string   "nickname",     limit: 255
    t.decimal  "rewards",                  precision: 16, scale: 2
    t.decimal  "balance",                  precision: 16, scale: 2
    t.integer  "customer_id",  limit: 4
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_index "accounts", ["customer_id"], name: "index_accounts_on_customer_id", using: :btree

  create_table "bills", force: :cascade do |t|
    t.string   "status",                limit: 255
    t.string   "payee",                 limit: 255
    t.string   "nickname",              limit: 255
    t.date     "creation_date"
    t.date     "payment_date"
    t.integer  "recurring_date",        limit: 4
    t.date     "upcoming_payment_date"
    t.decimal  "payment_amount",                    precision: 16, scale: 2
    t.integer  "account_id",            limit: 4
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "street_number", limit: 255
    t.string   "street_name",   limit: 255
    t.string   "city",          limit: 255
    t.string   "state",         limit: 255
    t.string   "zip",           limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "deposits", force: :cascade do |t|
    t.string   "deposit_type",     limit: 255
    t.datetime "transaction_date"
    t.string   "status",           limit: 255
    t.string   "medium",           limit: 255
    t.decimal  "amount",                       precision: 16, scale: 2
    t.string   "description",      limit: 255
    t.integer  "account_id",       limit: 4
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "deposits", ["account_id"], name: "index_deposits_on_account_id", using: :btree

  create_table "merchants", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "category",      limit: 255
    t.string   "street_number", limit: 255
    t.string   "street_name",   limit: 255
    t.string   "city",          limit: 255
    t.string   "state",         limit: 255
    t.string   "zip",           limit: 255
    t.float    "lat",           limit: 24
    t.float    "lng",           limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "purchase_type", limit: 255
    t.datetime "purchase_date"
    t.decimal  "amount",                    precision: 16, scale: 2
    t.string   "status",        limit: 255
    t.string   "medium",        limit: 255
    t.string   "description",   limit: 255
    t.integer  "merchant_id",   limit: 4
    t.integer  "account_id",    limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "purchases", ["account_id"], name: "index_purchases_on_account_id", using: :btree
  add_index "purchases", ["merchant_id"], name: "index_purchases_on_merchant_id", using: :btree

  create_table "transfers", force: :cascade do |t|
    t.string   "transfer_type",    limit: 255
    t.datetime "transaction_date"
    t.string   "status",           limit: 255
    t.string   "medium",           limit: 255
    t.decimal  "amount",                       precision: 16, scale: 2
    t.string   "description",      limit: 255
    t.integer  "payer_id",         limit: 4
    t.integer  "payee_id",         limit: 4
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "transfers", ["payee_id"], name: "index_transfers_on_payee_id", using: :btree
  add_index "transfers", ["payer_id"], name: "index_transfers_on_payer_id", using: :btree

  create_table "withdraws", force: :cascade do |t|
    t.string   "withdraw_type",    limit: 255
    t.datetime "transaction_date"
    t.string   "status",           limit: 255
    t.string   "medium",           limit: 255
    t.decimal  "amount",                       precision: 16, scale: 2
    t.string   "description",      limit: 255
    t.integer  "account_id",       limit: 4
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "withdraws", ["account_id"], name: "index_withdraws_on_account_id", using: :btree

end
