class UsersController < ApplicationController
	
	def show
		render action: 'myprofile'
    	end
	

	def new
		@user = User.new
		@membership = Membership.new
	end

	def user_params
	      params.require(:user).permit(:name, :email, :password, :firstName, :lastName)
        end

    def newgroups
    	@newgroups = Group.where.not(user: @current_user)
    end

	def create
		@user = User.new(user_params)
    		if @user.save
      			redirect_to @user
      			render 'myprofile'
    		else
      			render 'myprofile'
    		end
    end

    def add
    	@group = Group.find(params[:group][:group_id])
    	@group.users << @current_user
    	@current_user.groups << @group

    end	

end
