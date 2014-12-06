class EventsController < ApplicationController
	def show 
		render action: 'home'
		@groups = Group.find_by_id(params[:id]).order(:moniker)
	end
	def new_event
		@event = Event.new
	end
end
