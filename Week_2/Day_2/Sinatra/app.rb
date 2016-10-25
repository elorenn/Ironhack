require "sinatra"

# Make a GET request. List what url (homepage) to go to "/" 
# Right now our domain is localhost:4567

get "/" do	
	erb(:home)
end

get "/hi" do 
	erb(:hipage)
end

get "/about" do
	erb(:about)
	#views/about.erb
end

get "/best_pizza" do

	@toppings = ["basil", "green peppers", "tomato", "pineapple", "olives", "parmesan"]

	erb(:best_pizza)

end