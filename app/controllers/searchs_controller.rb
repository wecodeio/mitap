class EventsController < ApplicationController
	
	def crate
		palabra = params[:keyword]

		@event_groups = EventGroup.where(name LIKE ?, palabra)

		respon_to do | format |
			format.html{ redirect_to root_path}
		end
		
	end
end