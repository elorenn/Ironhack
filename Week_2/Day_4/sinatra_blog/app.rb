require "sinatra"

require_relative "lib/blog.rb"
require_relative "lib/post.rb"

blog = Blog.new(...)
blog.add_post Post.new("First Post", Time.now - 4 * seconds_in_day, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
blog.add_post Post.new("Second Post", Time.now - 3 * seconds_in_day, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
blog.add_post Post.new("Third Post", Time.now - 2 * seconds_in_day, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")

get "/" do 
	@posts = blog.posts	

	erb(:home)
end