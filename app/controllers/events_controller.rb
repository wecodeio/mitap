class EventsController < ApplicationController
  def index
    @events = Event.all
    @event_groups = EventGroup.all
  end

  def show
  	@event = Event.find(params[:id])
  end


end