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

ActiveRecord::Schema.define(version: 20150804223436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer  "score"
    t.integer  "min"
    t.integer  "max"
    t.string   "turkID"
    t.boolean  "SLA"
    t.boolean  "avg"
    t.boolean  "norm"
    t.datetime "timestart"
    t.datetime "timefinish"
    t.float    "duration"
    t.integer  "seed"
    t.string   "playerID"
    t.integer  "gamenumber"
    t.string   "ramp"
    t.integer  "limits",     default: [],              array: true
    t.integer  "pushes",     default: [],              array: true
    t.boolean  "cashed",     default: [],              array: true
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "stamps",     default: [],              array: true
  end

end
