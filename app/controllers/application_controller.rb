class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
<<<<<<< HEAD
  	protect_from_forgery with: :exception
	def update_groups
	end
	allgroups()

=======
  protect_from_forgery with: :exception
  include SessionsHelper
>>>>>>> session
end
