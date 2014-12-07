class User < ActiveRecord::Base
	has_many :memberships
	has_many :groups, :through => :memberships

	
	mount_uploader :picture, PictureUploader

	validate  :picture_size
    	# Validates the size of an uploaded picture.
    	def picture_size
      		if picture.size > 5.megabytes
        	errors.add(:picture, "should be less than 5MB")
      		end
    	end

end
