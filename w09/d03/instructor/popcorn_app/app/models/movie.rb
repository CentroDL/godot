# CREATE TABLE movies (
#   id serial PRIMARY KEY,
#   purchase_price numeric(4,2) DEFAULT 14.99,
#   rental_price numeric(4,2) DEFAULT 3.99,
#   available_on TIMESTAMP,
#   description text,
#   rating varchar,
#   poster_image text,
#   length integer,
#   title varchar NOT NULL,
#   created_at TIMESTAMP,
#   updated_at TIMESTAMP
# );

class Movie < ActiveRecord::Base
  RATING_SCALE = {
    'G'     => 0,
    'PG'    => 0,
    'PG-13' => 13,
    'R'     => 17,
    'NC-17' => 17
  }

  has_many :purchases
  has_many :users, through: :purchases

  validates :title, presence: true

  def rating_age
    RATING_SCALE[rating]
  end

  def available?
    available_on <= Time.now
  end

  def formatted_time
    h = length / 60
    m = length % 60
    "#{h} hour#{h > 1 ? 's' : ''} and #{m} minutes"
  end

  def rented_by?(user)
    user.rented_movies.include?(self)
  end

  def owned_by?(user)
    user.owned_movies.include?(self)
  end
end
