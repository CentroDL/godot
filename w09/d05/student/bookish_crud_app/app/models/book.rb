class Book < ActiveRecord::Base

  belongs_to :author

  has_many :characters

  validates :title,       null: false
  validates :released_on, null: false
  validates :genre,       null: false
  validates :author_id,   null: false

end

  # create_table "books", force: :cascade do |t|
  #   t.string  "title",       null: false
  #   t.date    "released_on", null: false
  #   t.string  "genre",       null: false
  #   t.integer "author_id",   null: false
  # end
