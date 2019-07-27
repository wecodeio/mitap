class EventsGroupsController < ApplicationController
  def index
    @events_groups = EventGroup.all
  end

  def show
  	@event_group = Event_group.find(params[:id])
  end

end