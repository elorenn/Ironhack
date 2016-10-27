crequire_relative("post.rb")

class Blog 
	def initialize 
		@posts = []
	end
	
	def posts
		# Your Blog class should have a 
		# #posts method that returns an array. 
		# That array should contain Post instances. 
		# With that array, you can loop over it in 
		# a view to show each post's title and date.	
	end

	def latest_posts

		# we want the posts to be listed in order of date, 
		# with the latest posts being first.
		# in your Sinatra route you will use #latest_posts 
		# instead of #posts and everything should work perfectly. 
		# It still should return an array, after all!

	end

end