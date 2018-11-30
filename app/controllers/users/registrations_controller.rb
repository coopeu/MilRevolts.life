class Users::RegistrationsController < Devise::RegistrationsController

#before_filter :configure_permitted_parameters, if: :devise_controller?
before_action :select_plan, only: :new

	def create
		super do |resources|
			if params[:plan]
				resource.plan_id = params[:plan]
				if resources.plan_id > 1
					resources.save_with_payment
				else
					resource.save
				end
			end
		end
	end	

	private

		def select_plan
			unless params[:plan] && (params[:plan] == '1' || params[:plan] == '2' || params[:plan] == '3')
				flash[:notice] = "Si us plau, seleccioneu un pla abans de registrar-vos."
				redirect_to root_url
			end
		end

			
end