class EventsController < ActionController::Base
  def index
    @events = Event.all
  end

  def show
  end

end