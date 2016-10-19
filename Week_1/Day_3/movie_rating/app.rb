# DON'T make a class for the movies

# use a nested loop

# on terminal: gem install imdb

require("imdb")

file='lib/movies.txt'


movies = []

File.readlines(file).each do |line|
	the_search = Imdb::Search.new(line)
	first_result = the_search.movies[0]
	movie_rating = first_result.rating 
	movies << (first_result)	
end

10.downto(1) do |i|
	graph = ""

	movies.each do |movie|

		if movie.rating >= i 
			graph += "|#"
		else 
			graph += "| "
		end
	end

	# if  movies.length == File.readlines(file).size 	
	 	puts graph
	# end
end

1.upto(movies.length) do |whatever|
	print "|#{whatever}"
end




puts ""
puts ""

0.upto(movies.length - 1).each do |n|
	puts "#{n+1}) #{movies[n].title}"
	puts ""
end
	