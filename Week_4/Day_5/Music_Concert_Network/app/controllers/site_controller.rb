class SiteController < ApplicationController

	def home
		@todays_concerts = Concert.order(date:"asc").where(date: Date.today...Date.today + 23.hours)
		@later_concerts = Concert.order(date:"asc").where(date: Date.tomorrow...Date.tomorrow + 1.month)	

		render 'home'
	end
end


