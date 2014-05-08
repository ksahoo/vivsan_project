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

ActiveRecord::Schema.define(version: 20140508063838) do

  create_table "gadgets", force: true do |t|
    t.string   "title"
    t.string   "method_or_gadget"
    t.string   "useful_for"
    t.string   "analysis_group"
    t.text     "gadget_description"
    t.decimal  "cost",                     precision: 10, scale: 0
    t.string   "company_name"
    t.text     "company_description"
    t.string   "company_website"
    t.string   "technology_used"
    t.text     "scientific_description"
    t.text     "field_1_explanation"
    t.string   "field_2_useful_for_which"
    t.text     "field_2_explanation"
    t.string   "name"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_data", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "institution"
    t.string   "password"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "institution"
    t.string   "role"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
