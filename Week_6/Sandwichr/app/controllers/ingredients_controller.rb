class IngredientsController < ApplicationController
	protect_from_forgery with: :null_session


	def index
		ingredients = Ingredient.all
		render json: ingredients
	end

	def create
		ingredient = Ingredient.create(ingredient_params)
		render json: ingredient
	end

	def show
		ingredient = Ingredient.find(params[:id])
		render json: ingredient
	end

	private

	def ingredient_params
		params.require(:ingredient)
			.permit(:name, :calories)
	end	
end
