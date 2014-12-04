class User < ActiveRecord::Base
	has_many :memberships
	has_many :groups, :through => :memberships
	def events
		@events = []
		user.groups.each do |group|
			@events << group.event.order(:date, :time)
		end
		return @events
	end
end
