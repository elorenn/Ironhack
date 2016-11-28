class SandwichesController < ApplicationController
protect_from_forgery with: :null_session

	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		sandwich = Sandwich.find(params[:id])
		list_of_ingredients = sandwich.ingredients
		#render json: sandwich
		render json: sandwich.to_json({:include => :ingredients})
	end

	def update
		sandwich = Sandwich.find(params[:id])
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find(params[:id])
		sandwich.destroy
		render json: sandwich
	end

	def add_ingredient
		sandwich_id = params[:id]
		ingredient_id = params[:ingredient_id]

		sandwich = Sandwich.find_by(id: sandwich_id)
		ingredient = Ingredient.find_by(id: ingredient_id)

		sandwich.total_calories = sandwich.total_calories + ingredient.calories

		sandwich.ingredients.push(ingredient)

		sandwich.save

		render json: sandwich.to_json({:include => :ingredients})
	end

	private

	def sandwich_params
		params.require(:sandwich)
			.permit(:name, :bread_type)
	end	
end
