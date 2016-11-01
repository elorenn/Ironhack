require "sinatra"
require "sinatra/reloader" if development?

require_relative "lib/product.rb"


bacon = Product.new("Bacon", 6, "http://blog.timesunion.com/recipebox/files/2011/01/OM-Bacon.jpg")
beer_cheese = Product.new("Beer cheese", 5, "https://si.wsj.net/public/resources/images/OD-BF205A_BEERC_P_20150128171247.jpg")
four_wheeler = Product.new("Four wheeler", 249, "http://www.familygokarts.com/images/tao/tforce/tforce-blue.jpg")
moonshine = Product.new("Moonshine", 10, "http://www.drinkhacker.com/wp-content/uploads/2014/11/Platte-Valley-Moonshine-Family.png")
gun = Product.new("Magnum", 175, "http://www.gundigest.com/wp-content/uploads/colt-python.jpg" ) 


products = [bacon, beer_cheese, four_wheeler, moonshine, gun]

get "/" do 
	@products_list = products
	erb(:home)
end


get "/new_product" do
	erb(:product_form)
end

# Rememeber, Forms are a 3-step process:
# 1. Display the form GET  
# 2. User fills it out and submits
# 3. Process the form POST

post "/add_product" do
	if params[:agree_to_terms] == "on"
		new_product = Product.new(params[:product_name], params[:product_price], params[:product_picture])

		products << new_product

		redirect to("/")
	else
		@message = "You need to agree to the terms. This is America."
		erb(:product_form)
	end	
end


