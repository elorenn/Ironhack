require 'date'


class ShoppingCart
	def initialize
		@items = []
	end
	def add_item(item)
		@items << (item)
	end
	def checkout
		cost = 0
		if @items.count > 5
			@items.each do |item|
				(cost += item.price)
			end
			discount = cost * 0.10
			discounted_cost = cost - (discount)
			puts "Your discounted price is $#{discounted_cost}. You saved $#{discount}!"
		else
			@items.each do |item|
				cost += item.price
			end
			puts "Your total today is $#{cost}. Have a nice day!"
		end
	end
end

class Item
	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		@price
	end
end

class Houseware < Item 
	def price
		if @price > 100
			price = @price - (@price * 0.05)
		else
			price = @price
		end
		price
	end
end

class Fruit < Item
	def price
	today = Date.today
	if today.saturday? || today.sunday?
		price = @price - (@price * 0.10)
	else 
		price = @price
	end
	price
	end
end


banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)


#iteration one: 
#puts banana.price
#puts orange_juice.price
#puts rice.price
#puts vacuum_cleaner.price
#puts anchovies.price

#iteration two: create add_item method

#iteration three:
lorenas_cart = ShoppingCart.new
lorenas_cart.add_item(orange_juice)
lorenas_cart.add_item(rice)
lorenas_cart.add_item(banana)
lorenas_cart.add_item(anchovies)
lorenas_cart.add_item(banana)
lorenas_cart.add_item(orange_juice)
lorenas_cart.checkout

#iteration four: create discount if more than 5 items in cart
