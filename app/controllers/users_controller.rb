class UsersController < ApplicationController
	def show
#		@user = User.find_by_id(params[:id]).order('name')
#		def user_params
#      		params.require(:user).permit(:content, :picture)
    	end
	

#	def show
#		render action: 'home'
#		@events = events
#	end
#	def newmem
#		nm = memberships.new(user_id: params[:user_id])
#		params[:nm][group_id]
#	end

	def new
		@user = User.new
	end

end
