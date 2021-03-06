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

ActiveRecord::Schema.define(version: 20151012070526) do

  create_table "corpus_entries", force: true do |t|
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: true do |t|
    t.string   "genre"
    t.string   "deliverable"
    t.string   "classification"
    t.string   "deadline"
    t.string   "format"
    t.string   "grade"
    t.text     "file_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "corpus_entry_id"
    t.integer  "student_id"
  end

  add_index "documents", ["corpus_entry_id"], name: "index_documents_on_corpus_entry_id"
  add_index "documents", ["student_id"], name: "index_documents_on_student_id"

  create_table "instructors", force: true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true

  create_table "students", force: true do |t|
    t.string   "level"
    t.string   "major"
    t.string   "gender"
    t.integer  "age"
    t.string   "language"
    t.string   "ethnicity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tech_class_id"
  end

  add_index "students", ["tech_class_id"], name: "index_students_on_tech_class_id"

  create_table "tech_classes", force: true do |t|
    t.integer  "number"
    t.integer  "section"
    t.string   "day"
    t.string   "time"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "instructor_id"
  end

  add_index "tech_classes", ["instructor_id"], name: "index_tech_classes_on_instructor_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
