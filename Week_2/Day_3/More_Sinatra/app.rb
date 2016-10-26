require "sinatra"
require "sinatra/reloader" if development? 
require "pry"

enable(:sessions)

# Right now our domain is localhost:4567

# When you go to:
# http://localhost:4567/save_to_session/water
#This saves "water" into your params for this session's beverage,
# Then redirects you to the homepage:

get "/save_to_session/:thing" do
	session[:beverage] = params[:thing]
	redirect to("/")
end


get "/" do
	@drank = session[:beverage]

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

get "/new_page" do
	erb(:new_page)
	#views/about.erb
end

# binding.pry
