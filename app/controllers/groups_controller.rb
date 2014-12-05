class GroupsController < ApplicationController
	def all_groups
		@groups = Group.order("moniker")
	end
end
