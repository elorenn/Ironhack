class SandwichViewsController < ApplicationController

	def index
		@sandwiches = Sandwich.all

		render :index
	end

	def show
		@sandwich = Sandwich.find(params[:id])
		render :show
	end

end
