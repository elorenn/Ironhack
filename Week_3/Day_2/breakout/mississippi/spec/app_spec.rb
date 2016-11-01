require "rack/test"

require_relative "../app.rb"

RSpec.describe "Mississippi App" do 
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	describe "get /" do
		it "responds with 200 OK" do
			get "/"

			expect(last_response).to be_ok
		end

		it "contains Bacon" do
			get "/"
			expect(last_response.body).to include("Bacon")
		end
	end

	describe "get  /new_product" do
		it "contains form that goes to post /add_product" do
			get "/new_product"

			expect(last_response.body).to include("method=\"post\"")
			expect(last_response.body).to include("action=\"/add_product\"")
		end
	end
end

