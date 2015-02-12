class User < ActiveRecord::Base
  has_many :purchases, dependent: :destroy
  has_many :movies, through: :purchases

  validates :login, presence: true,
                    uniqueness: true
  def age
    (Time.now - born_on) / (60 * 60 * 24 * 365.25)
  end

  def can_view?(movie)
    age > movie.rating_age
  end

  def can_afford_to_buy?(movie)
    movie.purchase_price < balance
  end

  def can_afford_to_rent?(movie)
    movie.rental_price < balance
  end

  def buy(movie)
    return false unless movie.available?
    return false if owns?(movie)
    return false unless can_view?(movie)
    return false unless can_afford_to_buy?(movie)
    amount = movie.purchase_price
    self.balance -= amount
    self.save
    purchases.create(amount: amount, purchase_type: 'own', movie: movie)
  end

  def rent(movie)
    return false unless movie.available?
    return false unless can_view?(movie)
    return false unless can_afford_to_rent?(movie)
    amount = movie.rental_price
    self.balance -= amount
    self.save
    purchases.create(amount: amount, purchase_type: 'rent', movie: movie)
  end

  def rented_movies
    purchases.rentals.map(&:movie)
  end

  def owned_movies
    purchases.owns.map(&:movie)
  end

  def owns?(movie)
    owned_movies.include?(movie)
  end

  def rented?(movie)
    rented_movies.include?(movie)
  end
end
