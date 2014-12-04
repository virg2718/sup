class UsersController < ApplicationController
	def myprof
		render action: 'myprofile'
		@user = User.find_by_id(params[:id])
		@groups = Group.find_by_id(params[:id]).order(:moniker)
		def micropost_params
      		params.require(:micropost).permit(:content, :picture)
    	end
	end
	def show
		render action: 'home'
		@events = events
	end

end
