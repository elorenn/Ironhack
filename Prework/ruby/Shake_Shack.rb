class Milkshake
	def initialize
		@base_price = 3
		@ingredients = [ ]
	end
	def add_ingredient(ingredient)
		@ingredients << (ingredient)
	end
	def price_of_milkshake
		total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end
		total_price_of_milkshake
	end
end

class Ingredient
	attr_reader :name, :price 
	def initialize(name, price)
		@name = name
		@price = price
	end
end

nizars_milkshake = Milkshake.new
banana = Ingredient.new("Banana", 2)
chocholate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocholate_chips)

puts nizars_milkshake.price_of_milkshake




