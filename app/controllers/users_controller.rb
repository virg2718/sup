class UsersController < ApplicationController
	def show
		render action: 'myprofile'
		@user = User.find_by_id(params[:id]).order('name')
#		def user_params
#      		params.require(:user).permit(:content, :picture)
#    	end
		memberships()
    	@newgroups = @group - @memberships
	end
	def show
		render action: 'home'
		@events = events
	end
	def newmem
		nm = memberships.new(user_id: params[:user_id])
		params[:nm][group_id]
	end

end
