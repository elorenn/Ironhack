class SandwichViewsController < ApplicationController
	before_action :authenticate_user!

	def index
		@sandwiches = Sandwich.all

		render :index
	end

	def show
		@sandwich = Sandwich.find(params[:id])
		@possibleIngredients = Ingredient.all 
		render :show
	end

end
