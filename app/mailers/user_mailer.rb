class UserMailer < ApplicationMailer
  
  def reminder_email
   @user = params[:email]
   @url  = 'http://mitap.wecode.io/login'
   @event = Event.find(params[:id]).name
   mail(to: @user, subject: 'Recordatorio de inscripción al evento')
 end

  def inscription_email
  	@user = params[:email]
    @url  = 'http://mitap.wecode.io/login'
    @event = Event.find(params[:id]).name
    mail(to: @user, subject: 'Confirmación de inscripción al evento')
  end

  def newEvent_email
    @user = params[:email]
    @url  = 'http://mitap.wecode.io/login'
    
    mail(to: @user, subject: 'Nuevo evento creado en su grupo de interés')
  end

end