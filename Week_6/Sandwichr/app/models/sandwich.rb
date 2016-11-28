class Sandwich < ApplicationRecord
	has_many :sandwich_ingredients
	has_many :ingredients, through: "sandwich_ingredients"


	def update_calories
		new_total = 0

		self.ingredients.each do |an_ingredient|
			new_total += an_ingredient.update_calories
		end

		self.total_calories = new_total
		self.save
	end
	
end
