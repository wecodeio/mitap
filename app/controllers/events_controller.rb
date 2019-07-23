class EventsController < ActionController::Base
	def index
    @events = Event.all
  end
  def show
  end

  private
  def event_params
      params.fetch(:event, {}).permit(:name, :event_date, :start_hour,
       :description, :max_capacity, :place, :speakers, :end_hour)
    end
end