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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "genres", ["name"], name: "genres_name_key", unique: true, using: :btree

  create_table "genres_movies", id: false, force: :cascade do |t|
    t.integer "genre_id"
    t.integer "movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.decimal  "purchase_price", precision: 4, scale: 2, default: 14.99
    t.decimal  "rental_price",   precision: 4, scale: 2, default: 3.99
    t.datetime "available_on"
    t.text     "description"
    t.string   "rating"
    t.text     "poster_image"
    t.integer  "length"
    t.string   "title",                                                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "purchase_type"
    t.money    "amount", scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "movie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "login",   null: false
    t.decimal  "balance", precision: 4, scale: 2, default: 0.0
    t.datetime "born_on"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  add_index "users", ["login"], name: "users_login_key", unique: true, using: :btree

  add_foreign_key "genres_movies", "genres", name: "genres_movies_genre_id_fkey"
  add_foreign_key "genres_movies", "movies", name: "genres_movies_movie_id_fkey"
  add_foreign_key "purchases", "movies", name: "purchases_movie_id_fkey"
  add_foreign_key "purchases", "users", name: "purchases_user_id_fkey"
end
