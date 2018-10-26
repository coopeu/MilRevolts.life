class ContactesController < InheritedResources::Base


def new
	@contacte = Contacte.new 
end

def create
	@contacte = Contacte.new(contacte_params)
	
	if @contacte.save
		nom = params[:contacte][:nom]
		email = params[:contacte][:email]
		missatge = params[:contacte][:missatge]

		ContacteMailer.contacte_mailer(nom, email, missatge).deliver

		flash[:success] = 'Missatge rebut.'
		redirect_to new_contacte_path
	else
		flash[:error] = 'Error, no sha rebut el missatge '
		redirect_to new_contacte_path
	end	

end




  private

    def contacte_params
      params.require(:contacte).permit(:nom, :email, :telefon, :missatge)
    end

end

