class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller? 

protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nom, :avatar, :moto, :foto_moto, :localitat, :data_naixement, :presentacio, :mobil, :email, :password)}
		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:nom, :avatar, :moto, :foto_moto, :localitat, :data_naixement, :presentacio, :mobil, :email, :password, :remember_me)}
	end


end
