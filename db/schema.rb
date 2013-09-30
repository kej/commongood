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

ActiveRecord::Schema.define(version: 20130930211755) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indicator_values", force: true do |t|
    t.integer  "indicator_id"
    t.integer  "value_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "indicator_values", ["indicator_id"], name: "index_indicator_values_on_indicator_id"
  add_index "indicator_values", ["value_id"], name: "index_indicator_values_on_value_id"

  create_table "indicators", force: true do |t|
    t.string   "short"
    t.string   "title"
    t.integer  "matrix_id"
    t.integer  "max_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "indicators", ["matrix_id"], name: "index_indicators_on_matrix_id"

  create_table "matrices", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.string   "title"
    t.string   "document_url"
    t.integer  "company_id"
    t.text     "industry"
    t.float    "staff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reports", ["company_id"], name: "index_reports_on_company_id"

  create_table "values", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
