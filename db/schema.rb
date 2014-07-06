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

ActiveRecord::Schema.define(version: 20140703155500) do

  create_table "reports", force: true do |t|
    t.string   "time"
    t.string   "address"
    t.string   "name"
    t.string   "email"
    t.string   "roof"
    t.string   "roof_photos"
    t.string   "eaves"
    t.string   "eave_photos"
    t.string   "walls"
    t.string   "wall_photos"
    t.string   "attached"
    t.string   "attached_photos"
    t.string   "clearance"
    t.string   "clearance_photos"
    t.string   "defensible"
    t.string   "defensible_photos"
    t.string   "access"
    t.string   "access_photos"
    t.string   "water"
    t.string   "water_photos"
    t.string   "closing"
    t.string   "closing_photos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
