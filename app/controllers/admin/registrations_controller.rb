class Admin::RegistrationsController < Admin::BaseController
  #before_action :set_registration, only: [:show, :edit]

  def index
    @registrations = Registration.all
    @events = Event.all
    @event_groups = EventGroup.all
  end

  def show
    @event = Event.find(params[:id])
  end

  private
    
    #def set_registration
    #  if Registration.where("event = ?", params[:event_id])
     #     registration_params[:id]        
      #end 
    #end

    def registration_params
      params.fetch(:registration, {}).permit(:id)
    end

end