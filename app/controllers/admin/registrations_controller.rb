class Admin::RegistrationsController < Admin::BaseController
  
  def index
    @registrations = Registration.all
    @events = Event.all
    @event_groups = EventGroup.all
  end

  def show
    @event = Event.find(params[:id])
  end

  private
    
    def registration_params
      params.fetch(:registration, {}).permit(:id)
    end

end