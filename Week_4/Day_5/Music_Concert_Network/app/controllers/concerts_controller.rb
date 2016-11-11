class ConcertsController < ApplicationController

	def index
		@concerts = Concert.order(artist:"asc")
		render "index"
	end

	def new 
		@the_concert = Concert.new
		render 'new'
	end

end


