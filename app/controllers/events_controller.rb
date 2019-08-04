class EventsController < ApplicationController
  def index
    @events = Event.all
    @event_groups = EventGroup.all
  end

  def show
  	@event_group = EventGroup.find(params[:id])
  	@event = Event.find(params[:id])
  end

  def register
  		Registration.create(event_id: params[:id], user_id: session[:user_id])
  		redirect_to event_path, notice: "te inscribiste correctamente al evento"
  end
  		
end