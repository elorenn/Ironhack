require_relative("../lib/spec.rb")

RSpec.describe Post do
	before(:each) do
		@post1 = Post.new(...)
		@post2 = Post.new(...)
	end

	it("#title returns title") do 
		expect(@post1.title).to # which matcher?
		expect(@post2.title).to # which matcher?
	end
	
	it("#date returns date") do

		expect #what?
	end

	it("#text returns text") do

		expect #what?
	end

end
