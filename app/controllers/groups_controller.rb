class GroupsController < ApplicationController
	def all_groups
		@groups = Group.all.order('name')
	end
end
