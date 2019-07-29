class EventGroupsController < ApplicationController
  def index
    @event_groups = EventGroup.all
  end

  def show
  	@event_group = EventGroup.find(params[:id])
  	 @events = Event.all
  end

end