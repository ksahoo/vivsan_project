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

ActiveRecord::Schema.define(version: 20140512104340) do

  create_table "analysis_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "analysis_groups_gadgets", id: false, force: true do |t|
    t.integer "analysis_group_id"
    t.integer "gadget_id"
  end

  create_table "currencies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "field2_useful_for_whiches", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gadgets", force: true do |t|
    t.string   "title"
    t.string   "method_or_gadget"
    t.string   "useful_for"
    t.string   "analysis_group"
    t.text     "gadget_description"
    t.decimal  "cost",                        precision: 10, scale: 0
    t.string   "company_name"
    t.text     "company_description"
    t.string   "company_website"
    t.string   "technology_used"
    t.text     "scientific_description"
    t.text     "field_1_explanation"
    t.text     "field_2_explanation"
    t.string   "name"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "currency_id"
    t.string   "tool_to_users"
    t.string   "gadget_website"
    t.string   "brochure"
    t.string   "field2_useful_for_which_id"
    t.string   "usefulness_for_field_nrc"
    t.string   "usefulness_for_field_vivsan"
    t.boolean  "evaluation_by_vivsan",                                 default: false
    t.boolean  "evaluation_by_nrc",                                    default: false
  end

  create_table "gadgets_qualify_areas_of_interests", id: false, force: true do |t|
    t.integer "gadget_id"
    t.integer "qualify_areas_of_interest_id"
  end

  create_table "gadgets_type_of_methods", id: false, force: true do |t|
    t.integer "type_of_method_id"
    t.integer "gadget_id"
  end

  create_table "qualify_areas_of_interests", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specific_parameters", force: true do |t|
    t.string   "name"
    t.integer  "gadget_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "specific_parameters", ["gadget_id"], name: "index_specific_parameters_on_gadget_id", using: :btree

  create_table "type_of_methods", force: true do |t|
    t.string   "name"
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
