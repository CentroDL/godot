class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find params[:id]
  end

  def new
    @venue = Venue.new
  end

  def create
    venue = Venue.create venue_params
    redirect_to venue_path(venue)
  end

  def venue_params
    params.require(:venue).permit(:name, :city, :state, :is_family_friendly )
  end
end
