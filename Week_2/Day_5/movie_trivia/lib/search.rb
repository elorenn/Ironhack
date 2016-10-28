require "imdb"

class Movie_Search

	def initialize 
		@movies = []
	end
	
	def search_movie(movie)
		the_search = Imdb::Search.new(movie)

		@movies = the_search.movies.take(9)
	end	

end

