class UsersController < ApplicationController
	def show
		@user = User.find(param[:id]);
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			# success
			redirect_to @user
		else
			# error
			render 'new'
		end
	end

	# private methods indented for clarity
	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password)
		end
end
