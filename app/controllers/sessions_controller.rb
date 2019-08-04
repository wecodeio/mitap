class SessionsController < ApplicationController
  	

  	def new
	end

	def create
	  user = User.find_by_email(params[:email])
	  if user && user.authenticate(params[:password])
	    session[:user_id] = user.id
	    redirect_to events_path, notice: "Sesión iniciada!"
	  else
	    flash.now.alert = "Email o password es inválida"
	    render "new"
	  end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to events_path, notice: "Sesión cerrada!"
	end
end
