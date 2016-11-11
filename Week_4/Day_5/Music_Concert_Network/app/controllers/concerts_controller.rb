class ConcertsController < ApplicationController

	def index
		@concerts = Concert.order(artist:"asc")
		render "index"
	end

	def new 
		@the_concert = Concert.new
		render 'new'
	end

	def create
		@the_concert = Concert.new(
			:artist => params[:concert][:artist],
			:venue => params[:concert][:venue],
			:city => params[:concert][:city],
			:date => params[:concert][:date],
			:price => params[:concert][:price],
			:description => params[:concert][:description])

		@the_concert.save

		redirect_to('/concerts')
		#redirect_to concert_path(@the_concert)	
	end

end


		
