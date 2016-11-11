class ConcertsController < ApplicationController

	def index
		@concerts = Concert.order(artist:"asc")
		render "index"
	end

end
