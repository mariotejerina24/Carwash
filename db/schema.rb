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

ActiveRecord::Schema.define(version: 20150506020846) do

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "dni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "dni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "patent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "washes", force: :cascade do |t|
    t.decimal  "amount"
    t.date     "date"
    t.integer  "vehicle_id"
    t.integer  "employee_id"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "washes", ["customer_id"], name: "index_washes_on_customer_id"
  add_index "washes", ["employee_id"], name: "index_washes_on_employee_id"
  add_index "washes", ["vehicle_id"], name: "index_washes_on_vehicle_id"

end
