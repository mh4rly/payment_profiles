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

ActiveRecord::Schema.define(version: 20141020095530) do

  create_table "accounts", force: true do |t|
    t.string "email"
  end

  create_table "charges", force: true do |t|
    t.integer  "payment_profile_id"
    t.integer  "package_id"
    t.string   "currency_type"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "refunded_at"
    t.datetime "updated_at"
  end

  create_table "packages", force: true do |t|
    t.string   "name"
    t.integer  "cost"
    t.string   "currency_type"
    t.integer  "award_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_profiles", force: true do |t|
    t.integer  "account_id"
    t.integer  "last_four"
    t.string   "card_type"
    t.integer  "exp_month"
    t.integer  "exp_year"
    t.boolean  "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
