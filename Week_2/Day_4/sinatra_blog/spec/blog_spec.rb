require_relative("../lib/blog.rb")

RSpec.describe Blog do
	before(:each) do
		@blog = Blog.new(...)
	end

	it("#posts return list of posts") do
		expect(@blog.posts).to #??? which matcher should we use
	end
end
