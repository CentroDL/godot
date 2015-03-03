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

ActiveRecord::Schema.define(version: 20150303014750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foot_soldiers", force: true do |t|
    t.integer  "height_in_inches"
    t.integer  "weight_in_pounds"
    t.string   "image_url",        default: "http://theflickcast.com/wp-content/uploads/gallery/teenage-mutant-ninja-turtles-toy-fair-2012/footsoldier.jpg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rats", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reporters", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turtles", force: true do |t|
    t.string   "name"
    t.string   "eyeband_color"
    t.string   "weapon"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "villains", force: true do |t|
    t.string   "name"
    t.string   "species"
    t.string   "superpower"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
