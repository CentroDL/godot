# CREATE TABLE movies(
#   id              SERIAL     PRIMARY KEY,
#   purchase_price  MONEY      DEFAULT 14.99,
#   rental_price    MONEY      DEFAULT 3.99,
#   title           VARCHAR    NOT NULL,
#   available_on    DATE       NOT NULL,
#   description     VARCHAR    NOT NULL,
#   rating          rating    NOT NULL,
#   poster_image    VARCHAR    NOT NULL,
#   created_at      timestamp  DEFAULT CURRENT_TIMESTAMP,
#   updated_at      timestamp  DEFAULT CURRENT_TIMESTAMP,
#   length          INTERVAL   NOT NULL, --microseconds?
# );

class Movie < ActiveRecord::Base

  has_and_belongs_to_many :genres
  has_many :purchases
  has_many :users, through: :purchases

  def available?
    available_on <= Date.new
  end

  def formatted_time
    self.length
  end

  def rented_by?(user)
    user.purchases.where( purchase_type: 'rent' ).pluck(:movie_id).include?(id)
  end

  def owned_by?(user)
    user.owns? self
  end

end
