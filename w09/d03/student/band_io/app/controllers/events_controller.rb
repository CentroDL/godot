class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find params[:id]
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.create event_params
    redirect_to event_path(event)
  end

  def event_params
    params.require(:event).permit( :date, :alcohol_served, :band_id, :venue_id )
  end

end
