class UserMailer < ApplicationMailer
	default from: 'arielgutierrez2001@gmail.com'
 
  def reminder_email
    @user = params[:email]
    @url  = 'http://mitap.wecode.io'
    mail(to: @user, subject: 'Recordatorio del evento al que se suscribió')
  end
end
