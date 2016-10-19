require_relative("post.rb")

class Blog 
	def initialize 
		@posts = []
	end
	def add_post(post)
		@posts << post
	end
	def publish_front_page
		puts ""
		puts @title
		puts "************"
		puts @text
		# method that shows front page
	end
end