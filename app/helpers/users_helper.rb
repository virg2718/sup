module UsersHelper

	# Calls memberships, sorted by group name
 	def memberships
 		@memberships = Membership.groups.where("user_id = ?", params[:id]).order('moniker')
  	end

end
