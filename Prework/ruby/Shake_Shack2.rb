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

class Shop
	def initialize
		@shopping_cart = [ ] 
	end
	def add_milkshakes(milkshake)
		@shopping_cart << (milkshake)
	end
	def checkout
		total_in_cart = 0
		@shopping_cart.each do |milkshake|
			total_in_cart += milkshake.price_of_milkshake
			#add the price of each milkshake
		end
		total_in_cart
	end
end




nizars_milkshake = Milkshake.new
banana = Ingredient.new("Banana", 2)
chocholate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocholate_chips)

#puts nizars_milkshake.price_of_milkshake

nicks_milkshake = Milkshake.new
mango = Ingredient.new("Mango", 3)
nicks_milkshake.add_ingredient(mango)

my_order = Shop.new
my_order.add_milkshakes(nizars_milkshake)
my_order.add_milkshakes(nicks_milkshake)

puts my_order.checkout


