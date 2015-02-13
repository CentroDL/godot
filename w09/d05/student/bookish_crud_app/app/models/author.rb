class Author < ActiveRecord::Base

  #enum gender: [:male, :female, :other]

  has_many :books
  has_many :characters, through: :books

  validates :name,    presence: true
  validates :born_on, presence: true
  #validates :gender,  inclusion:
end

  # create_table "authors", force: :cascade do |t|
  #   t.string  "name",                          null: false
  #   t.date    "born_on",                       null: false
  #   t.date    "died_on"
  #   t.string  "gender",        default: "0"
  #   t.boolean "has_pseudonym", default: false
  # end
