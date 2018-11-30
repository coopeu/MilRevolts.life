class ProfilesController < ApplicationController

	def new
		#form for filling out each user their own profile
		@user =User.find(params[:user_id])
		@profile = @user.build_profile 
	end

 def index
    @profiles = Profile.all
  end

	def show
	  @profile = Profile.find(params[:user_id])
	end

   def update
      current_user.update profile_params
   end

   private

   def profile_params
    params.require(:user).permit(profile_attributes: [:id, :user_id, :nom, :cognom1, :cognom2, :avatar, :moto, :foto_moto, :localitat, :data_naixement, :presentacio, :mobil, :sortides, :plan_id])

#  	params.require(:profile).permit(:id, :user_id, :nom, :cognom1, :cognom2, :avatar, 
#  		:moto, :foto_moto, :localitat, :data_naixement, 
#  		:presentacio, :mobil, :sortides, :plan_id) 
	end


end

