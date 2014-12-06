class User < ActiveRecord::Base
	attr_accessor :remember_token
	has_many :memberships
	has_many :groups, :through => :memberships

	def events
		@events = []
		user.groups.each do |group|
			@events << group.event.order(:date, :time)
		end
		return @events
	end
	mount_uploader :picture, PictureUploader

	validate  :picture_size
    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
    #As with the other code for cookies, this draws heavily on railstutorial.org
    def remember
	    self.remember_token = User.new_token
	    update_attribute(:remember_digest, User.digest(remember_token))
  	end
end
