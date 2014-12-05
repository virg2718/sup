class EventsController < ApplicationController
	def show 
		render action: 'home'
		@groups = Group.find_by_id(params[:id]).order(:moniker)
	end
<<<<<<< Updated upstream
	def new_event
		@event = Event.new
	end
=======
>>>>>>> Stashed changes
end
