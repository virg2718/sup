class Group < ActiveRecord::Base
	has_many :events
	has_many :memberships
	has_many :users, :through => :memberships
end
