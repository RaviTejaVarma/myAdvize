class UsersController < ApplicationController

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to projects_path
		else
			render 'edit'
		end
	end

	def show
		@user = User.find_by_username(params[:username])
	end

	private
	def user_params
		params.require(:user).permit(:username, :image)
	end

end
