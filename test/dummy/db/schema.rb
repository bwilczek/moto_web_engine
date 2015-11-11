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

ActiveRecord::Schema.define(version: 20151111135905) do

  create_table "moto_web_engine_runs", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "result",      limit: 4
    t.integer  "cnt_all",     limit: 4
    t.integer  "cnt_passed",  limit: 4
    t.integer  "cnt_failure", limit: 4
    t.integer  "cnt_error",   limit: 4
    t.integer  "cnt_skipped", limit: 4
    t.string   "user",        limit: 255
    t.string   "host",        limit: 255
    t.integer  "pid",         limit: 4
    t.float    "duration",    limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "moto_web_engine_tests", force: :cascade do |t|
    t.integer  "run_id",     limit: 4
    t.string   "name",       limit: 255
    t.string   "class_name", limit: 255
    t.text     "log",        limit: 16777215
    t.text     "parameters", limit: 65535
    t.integer  "result",     limit: 4
    t.string   "error",      limit: 255
    t.text     "failures",   limit: 65535
    t.string   "env",        limit: 255
    t.float    "duration",   limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
