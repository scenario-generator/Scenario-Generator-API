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

ActiveRecord::Schema.define(version: 20160331220259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "columns", force: :cascade do |t|
    t.string   "name"
    t.integer  "generator_id"
    t.integer  "parent_id"
    t.string   "parent_type"
    t.boolean  "spoilers",           default: false
    t.integer  "min",                default: 1
    t.integer  "max",                default: 1
    t.integer  "max_per"
    t.string   "help"
    t.integer  "chance_of_multiple", default: 0
    t.string   "type",               default: "Column::Options"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "generators", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.boolean  "spoilers"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "option_exclusions", force: :cascade do |t|
    t.integer  "left_option_id"
    t.integer  "right_option_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "text"
    t.integer  "column_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
