class Users::RegistrationsController < Devise::RegistrationsController


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

end