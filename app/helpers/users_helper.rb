module UsersHelper

	#gets all groups for current user
	def groups
		@groups = @current_user.groups
		return @groups
	end
	
	#gets all events for current user
	def events
		@events = []
		@groups.each do |group|
			@events << group.event.order(:date, :time)
		end
		return @events
	end

end
