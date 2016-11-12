class ConcertsController < ApplicationController

	def index
		@concerts = Concert.order(date:"asc")
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

		if @the_concert.save

			redirect_to('/concerts')
		else
			render 'new'
		end		
	end

	def show
		@concert = Concert.find(params[:id])

		render 'show'
	end
end