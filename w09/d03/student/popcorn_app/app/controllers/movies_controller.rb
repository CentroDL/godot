class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find( params[:id] )
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.create( movie_params )
    redirect_to movie_path(movie)
  end

  # def destroy
  #   Movie.destroy(params[:id])
  #   redirect_to  movies_path
  # end

  # def edit
  #   @movies = Movie.find(params[:id])
  # end

  # def update
  #   movies = Movie.find(params[:id])
  #   movies.update(movies_params)
  #   redirect_to movies_path(movies)
  # end

  def movie_params
    params.require(:movie).permit(:title, :description)
  end

end
