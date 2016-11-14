require "imdb"

class Movie_Search

	def initialize 
		@movies = []
	end
	
	def search_movie(movie)
		
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

	end	

end
