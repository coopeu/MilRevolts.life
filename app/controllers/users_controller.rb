class UsersController < ApplicationController


  def index
    @users = User.all
  end

	def show
	  @user = User.find(params[:id])
#	  @user = User.friendly.find(params[:id])
	end

	private
	def user_params
  	params.require(:user).permit(:nom, :cognom1, :cognom2, :avatar, :moto, :foto_moto, :localitat, :data_naixement, :presentacio, :mobil, :sortides, :plan_id) 
	end

end

