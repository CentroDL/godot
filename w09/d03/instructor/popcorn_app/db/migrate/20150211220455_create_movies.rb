class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.decimal  "purchase_price", precision: 4, scale: 2, default: 14.99
      t.decimal  "rental_price",   precision: 4, scale: 2, default: 3.99
      t.datetime "available_on"
      t.text     "description"
      t.string   "rating"
      t.text     "poster_image"
      t.integer  "length"
      t.string   "title",          null: false
      t.timestamps
    end
  end
end
