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

ActiveRecord::Schema.define(version: 20161123180533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "body",       null: false
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["student_id"], name: "index_comments_on_student_id", using: :btree
  add_index "comments", ["teacher_id"], name: "index_comments_on_teacher_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "student_final_grade"
    t.integer  "student_id"
    t.integer  "subject_id"
    t.integer  "teacher_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "courses", ["student_id"], name: "index_courses_on_student_id", using: :btree
  add_index "courses", ["subject_id"], name: "index_courses_on_subject_id", using: :btree
  add_index "courses", ["teacher_id"], name: "index_courses_on_teacher_id", using: :btree

  create_table "groupings", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "course_id"
    t.integer  "creator_id"
    t.integer  "parent_group_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "groups", ["parent_group_id"], name: "index_groups_on_parent_group_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "first_name",    null: false
    t.string   "last_name",     null: false
    t.float    "gpa"
    t.date     "date_of_birth", null: false
    t.string   "gender"
    t.string   "grade_level"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.string   "hashed_password"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
