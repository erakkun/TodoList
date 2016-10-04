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

ActiveRecord::Schema.define(version: 20161004173618) do

  create_table "task_types", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.integer  "task_type_id", limit: 4
    t.datetime "deadline"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "tasks", ["task_type_id"], name: "index_tasks_on_task_type_id", using: :btree

  add_foreign_key "tasks", "task_types"
end
