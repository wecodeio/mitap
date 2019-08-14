class UserMailer < ApplicationMailer

  def reminder_email
    UserMailer.with(email: params[:email]).reminder_email.deliver_now
    redirect_to admin_registration_path
    flash.alert = "Email enviado correctamente"
  end

end