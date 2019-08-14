class UserMailer < ApplicationMailer
  
  def reminder_email
     @user = params[:email]
     @url  = 'http://mitap.wecode.io/login'
     mail(to: @user, subject: 'Confirmación de inscripción al evento')
  end

end