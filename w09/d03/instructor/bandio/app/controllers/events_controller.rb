class EventsController < ApplicationController

  def search
  end

  def results
    @date = params[:date]
    # The datetime object is incredibly flexible, and can read the HTML formatted date
    # without customization/finicking
    @events = Event.where(date: params[:date])
  end

  def new
    @venue = Venue.find(params[:venue_id])
    @event = Event.new
    # family-friendly venues should only be presented with family-friendly bands
    @bands = @venue.family_friendly ? Band.all : Band.where(explicit_lyrics: false)
  end

  def create
    @event = Event.create(event_params)
    @event.venue_id = params[:venue_id]
    @event.save
    redirect_to @event
  end

  def show
    @event = Event.find(params[:id])
  end

  private

    def event_params
      params.require(:event).permit(:venue_id, :band_id, :date, :alcohol_served)
    end
end
