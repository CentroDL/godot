# CREATE TABLE users(
#   id          SERIAL     PRIMARY KEY,
#   email       VARCHAR    UNIQUE NOT NULL,
#   balance     MONEY      DEFAULT 0.00,
#   born_on     DATE       NOT NULL,
#   created_at  timestamp  DEFAULT CURRENT_TIMESTAMP,
#   updated_at   timestamp  DEFAULT CURRENT_TIMESTAMP,
# );

class User < ActiveRecord::Base

  has_many :purchases
  has_many :movies, through: :purchases

  def age
   age =  Date.today.year - born_on.year
   age -= 1 if Date.today < born_on + age.years
  end

  def can_afford_to_buy?(movie)
    self.balance >= movie.purchase_price
  end

  def can_afford_to_rent?(movie)
    self.balance >= movie.rental_price
  end

  def can_view?(movie)

  end

  def buy(movie)
    self.purchases.create( purchase_type: 'own', movie_id: movie.id)
  end

  def rent(movie)
  end

  def rented_movies
  end

  def purchased_movies
  end

  def owns?(movie)
    # movies.include? movie
    purchases.where( purchase_type: 'own' ).pluck(:movie_id).include?(movie.id)
  end

end
