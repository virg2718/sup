class UsersController < ApplicationController
	def show
		@user = User.find_by_id(params[:id]).order(:name)
#		def user_params
#      		params.require(:user).permit(:content, :picture)
#    	end
		render action: 'myprofile'
		memberships()
    	@newgroups = @group - @memberships
	end
#	def show
#		render action: 'home'
#		@events = events
#	end
	def newmem
		nm = memberships.new(user_id: params[:user_id])
		params[:nm][group_id]
	end
	#code taken from railstutorial.org
	def User.new_token
    	SecureRandom.urlsafe_base64
  	end

end
