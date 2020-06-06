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

ActiveRecord::Schema.define(version: 20200605185655) do

  create_table "addresses", force: :cascade do |t|
    t.string   "address"
    t.integer  "persona_id"
    t.string   "description"
    t.boolean  "has_interior"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "admin_levels", force: :cascade do |t|
    t.string   "admin_level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "agencies", force: :cascade do |t|
    t.string   "name"
    t.string   "acronym"
    t.string   "type_of_agency"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "govs", force: :cascade do |t|
    t.integer  "persona_id"
    t.integer  "agency_id"
    t.boolean  "on_duty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guns", force: :cascade do |t|
    t.string   "serial_num"
    t.string   "type_description"
    t.integer  "persona_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "username"
    t.integer  "admin_level"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "member_id"
    t.boolean  "has_agency"
    t.integer  "agency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "plate_number"
    t.integer  "persona_id"
    t.string   "type_description"
    t.string   "color"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
