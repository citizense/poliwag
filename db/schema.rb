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

ActiveRecord::Schema.define(version: 20161210211421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.string   "state"
    t.string   "session_id"
    t.string   "session_name"
    t.string   "bill_id"
    t.string   "number"
    t.string   "change_hash"
    t.string   "url"
    t.string   "status_date"
    t.integer  "status"
    t.string   "last_action_date"
    t.string   "last_action"
    t.string   "title"
    t.string   "description"
    t.integer  "completed"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "details", force: :cascade do |t|
    t.string   "bill_number"
    t.string   "bill_type"
    t.string   "body"
    t.string   "body_id"
    t.string   "current_body"
    t.string   "current_body_id"
    t.string   "session_title"
    t.string   "committee"
    t.string   "progress"
    t.string   "history"
    t.string   "subjects"
    t.string   "votes"
    t.string   "amendments"
    t.string   "supplements"
    t.string   "sponsors"
    t.string   "calendar"
    t.string   "lbill_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
