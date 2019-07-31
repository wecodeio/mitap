class UsersController < ApplicationController
	def new
	  @user = User.new
	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	    session[:user_id] = @user.id
	    redirect_to root_url, notice: "Gracias por registrarse!"
	  else
	    render "new"
	  end
	end

	private
	  def user_params
	    params.require(:user).permit(:username, :email, :password, :encrypted_password)
	  end
end
