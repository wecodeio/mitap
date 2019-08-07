class EventGroupsController < ApplicationController
  def index
    @event_groups = EventGroup.all
  end

  def show
  	@event_group = EventGroup.find(params[:id])
  	@events = Event.all
  end

  def register
  	user = current_user
    event_group = EventGroup.find(params[:id])

  	if user == nil 
      redirect_to event_group_path
      flash.alert = "Para inscribirte debes estar logueado"
      return
    end

    if event_group == nil
      redirect_to event_group_path
      flash.alert = "El grupo de eventos no existe"
      return
    end

    if RegistrationGroup.where(user: user, event_group: event_group).exists?
  		redirect_to event_group_path
      flash.alert = "Ya está inscripto a este grupo de eventos"
      return
  	end

    RegistrationGroup.create(event_group_id: params[:id], user_id: session[:user_id])
    redirect_to event_group_path
    flash.alert = "te inscribiste correctamente al grupo de eventos"
  end

  def unregister
    user = current_user
    event_group = EventGroup.find(params[:id])
    register = RegistrationGroup.where(user: user, event_group: event_group)
    if register.exists?
      register.first.destroy
      redirect_to :action => :show
      flash.alert = "Anulaste tu inscripción al grupo de eventos correctamente"
    end
  end

end