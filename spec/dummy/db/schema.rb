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

ActiveRecord::Schema.define(version: 20170205044433) do

  create_table "hoges", force: :cascade do |t|
    t.string   "title"
    t.datetime "ll_be_started"
    t.date     "will_be_ended"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "piyos", force: :cascade do |t|
    t.string   "title"
    t.date     "ll_be_started_at"
    t.datetime "will_be_ended_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
