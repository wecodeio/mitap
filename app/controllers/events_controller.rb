class EventsController < ApplicationController
  def index
    @events = Event.all
    @event_groups = EventGroup.all
  end

  def show
  	@event = Event.find(params[:id])
  end

  def register
  	user = current_user
    event = Event.find(params[:id])

  	if user == nil 
      redirect_to event_path
      flash.alert = "Para inscribirte debes estar logueado"
      return
    end

    if event == nil
      redirect_to event_path
      flash.alert = "El evento no existe"
      return
    end

    if event.max_capacity <= event.registrations.count
      redirect_to event_path
      flash.alert = "El evento está completo"
      return
    end

    if Registration.where(user: user, event: event).exists?
  		redirect_to event_path
      flash.alert = "Ya está inscripto a este evento"
      return
  	end

    Registration.create(event_id: params[:id], user_id: session[:user_id])
    redirect_to event_path
    flash.alert = "te inscribiste correctamente al evento"
  end
  		
end