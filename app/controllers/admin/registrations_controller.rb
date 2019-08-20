class Admin::RegistrationsController < Admin::BaseController
  
  def index
    @registrations = Registration.all
    @events = Event.all
    @event_groups = EventGroup.all
  end

  def show
    @event = Event.find(params[:id])
    @event_group = EventGroup.find(params[:id])
  end

  def reminder_email
    UserMailer.with(email: params[:email], id: params[:id]).reminder_email.deliver_now
    redirect_to admin_registration_path
    flash.alert = "Email enviado correctamente"
  end

  def inscription_email
    UserMailer.with(email: params[:email], id: params[:id]).inscription_email.deliver_now
    redirect_to admin_registration_path
    flash.alert = "Email enviado correctamente"
  end

  def novedades_email
    UserMailer.with(email: params[:email], id: params[:id]).novedades_email.deliver_now
    redirect_to admin_registration_path
    flash.alert = "Email enviado correctamente"
  end

  private
    
    def registration_params
      params.fetch(:registration, {}).permit(:id)
    end

end