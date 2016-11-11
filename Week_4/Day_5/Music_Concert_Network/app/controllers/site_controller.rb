class SiteController < ApplicationController

	def home
		@concerts = Concert.order(date:"asc").where(date: Date.today...Date.tomorrow)
	
		render 'home'
	end
end
