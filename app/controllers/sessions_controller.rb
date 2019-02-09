class SessionsController < ApplicationController
	
	def new
	end

	def create
	  user = User.find_by(email: params[:email])

	  if user && user.authenticate(params[:password])
	    log_in(user)
	    redirect_to root_path, success: "Binevenu tu est entré dans ton espace personel !"

	  else
	    redirect_to new_session_path, danger:" l'adresse mail ou password invalide"
	  end
	end

	def destroy
		session.clear
		redirect_to root_path, success:"Déconnexion!"
	end

end