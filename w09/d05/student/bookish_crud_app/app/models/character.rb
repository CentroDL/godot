class Character < ActiveRecord::Base

  belongs_to :book

  # enum gender: [:male, :female, :other]
  validates :name,    null: false
  validates :book_id, null: false

end

  # create_table "characters", force: :cascade do |t|
  #   t.string  "name",                  null: false
  #   t.string  "gender",  default: "0"
  #   t.string  "quirk"
  #   t.integer "book_id",               null: false
  # end
