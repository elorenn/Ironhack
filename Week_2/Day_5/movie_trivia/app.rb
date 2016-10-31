require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development? 
require "imdb"

#require_relative("lib/search.rb")

# http://www.rubydoc.info/github/ariejan/imdb/master/Imdb/Movie

get "/" do
	erb :home	
end

# get "/search_results" do
	
# 	erb(:results) 
# end

get "/searching" do
	the_search = Imdb::Search.new(params[:select_word])

	@movies = the_search.movies
	@twenty_movies = the_search.movies.take(14)

	@nine_movies = []
	@twenty_movies.each do |movie| 
		unless @nine_movies.length >= 9
			if movie.poster != nil 
				@nine_movies << movie 
			end
		end
	end
	@years = []	
	@nine_movies.each do |movie| 
			@years << movie.year
		end
	@random_year = @years.sample	

	erb(:results)
end

post "/answer" do

	erb(:answer)
end


# get "/tryagain" do
 
# 	erb(:results)
# end

# ask the user for a search term
# returns 9 movies that match search term
# then make sure the movies returned all have posters

# then ask the user to guess which movie was release in x year
# use Java to show correct result
# show error if search returns less than 2 movies 
# Bonus: choose randomly (shuffle?) bwtn asking to guess year and asking something else
