require_relative("post.rb")

class Blog 
	def initialize 
		@posts = []
		@page_start = 0
		@page_end = 2 
	end

	def add_post(new_post)
		@posts << (new_post)
	end
	
	def go_next
		# 0..2 => 3..5
		@page_start += 3
		@page_end += 3
	end

	def go_prev
		@page_start -= 3
		@page_end -= 3
	end


	def publish_front_page
		current_posts = @posts[@page_start..@page_end]

		current_posts.each do |the_post|
			the_post.print
		end
	end
end