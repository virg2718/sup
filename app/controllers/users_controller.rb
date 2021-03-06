class UsersController < ApplicationController
	
	def show
		render action: 'myprofile'
    	end
	

	def new
		@user = User.new
	end

	def user_params
	      params.require(:user).permit(:name, :email, :password, :firstName, :lastName)
        end

	def create
		@user = User.new(user_params)
    		if @user.save
      			redirect_to @user
    		else
      			render 'new'
    		end
	end

end
