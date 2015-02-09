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
    case movie.rating
    when 'G'
      self.age >= 0
    when 'PG'
      self.age >= 0
    when 'PG-13'
      self.age >= 13
    when 'R'
      self.age >= 17
    when 'NC-17'
      self.age >= 17
    end
  end

  def buy(movie)
    if self.can_afford_to_buy?(movie)
      self.purchases.create( purchase_type: 'own', movie_id: movie.id)
      self.balance -= movie.purchase_price
    else
      puts "Not enough money to buy."
    end
  end

  def rent(movie)
    if self.can_afford_to_rent? movie
      self.purchases.create purchase_type: 'rent', movie_id: movie.id
      self.balance -= movie.rental_price
    else
      puts 'Not enough money to rent.'
    end
  end

  def rented_movies
    self.purchases .where( purchase_type: 'rent')
  end

  def purchased_movies
    self.purchases .where( purchase_type: 'own')
  end

  def owns?(movie)
    # movies.include? movie
    purchases.where( purchase_type: 'own' ).pluck(:movie_id).include?(movie.id)
  end

end
