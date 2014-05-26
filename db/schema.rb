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

ActiveRecord::Schema.define(version: 20140526032545) do

  create_table "churches", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "pastor"
    t.string   "phone"
    t.string   "ag_code"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "date"
    t.string   "time"
    t.string   "cost"
    t.string   "forms"
    t.boolean  "active"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forms", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.string   "label"
    t.boolean  "required"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.string   "name"
    t.string   "event"
    t.string   "student"
    t.string   "cost"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "youth_group_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "dob"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["youth_group_id"], name: "index_students_on_youth_group_id", using: :btree

end
