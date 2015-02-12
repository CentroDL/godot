class PurchasesController < ApplicationController
  def new
    # grab the user from the URL
    @user = User.find(params[:user_id])

    # get the list of all possible movies
    @movies = Movie.all

    # create a new purchase for the form_for...
    @purchase = Purchase.new
  end

  def create
    user  = User.find(params[:user_id])
    movie = Movie.find(params[:purchase][:movie_id])

    # check if the rent or buy button was bought, and 
    # then use the internal model logic for renting
    # or buying, respectively...
    if rent? && user.rent(movie)
      redirect_to user_path(user)
    elsif user.buy(movie)
      redirect_to user_path(user)
    else
      # you can "flash" a message to the next page!
      flash[:error] = "Problem purchasing this movie."

      # if you are getting all failures, make sure your
      # user has enough money and is old enough to buy this movie!

      # use the given seed file to be sure
      redirect_to new_user_purchase_path(user)
    end
  end

  def rent?
    !params[:rent].nil?
  end
end
