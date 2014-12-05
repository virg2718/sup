class UsersController < ApplicationController
	def show
		render action: 'myprofile'
		@user = User.find_by_id(params[:id])
		@memberships = @user.memberships.order('name')
		def micropost_params
      		params.require(:micropost).permit(:content, :picture)
    	end
    	@groups = Group.select(:moniker).order('name')
    	@newgroups = @allgroups - @memberships
	end
	def show
		render action: 'home'
		@events = events
	end

end
