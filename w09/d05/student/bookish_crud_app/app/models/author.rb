class Author < ActiveRecord::Base
  has_many :books
  has_many :characters, through: :books
end
