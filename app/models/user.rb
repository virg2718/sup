class User < ActiveRecord::Base
	has_many :memberships
	has_many :groups, :through => :memberships
<<<<<<< HEAD
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
=======
>>>>>>> session
end
