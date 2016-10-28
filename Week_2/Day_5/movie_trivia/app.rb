require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development? 
require "imdb"

get "/" do
	erb :home	
end

get "/search_results" do
	the_search = Imdb::Search.new("aliens")

	@movies = the_search.movies

	erb(:results) 
end

post "/searching" do
	
	
	redirect to ("/search_results")
end


# ask the user for a search term
# returns 9 movies that match search term
# then make sure the movies returned all have posters
# then ask the user to guess which movie was release in x year
# use Java to show correct result
# show error if search returns less than 2 movies 
# Bonus: choose randomly (shuffle?) bwtn asking to guess year and asking something else
