# Right now our domain is localhost:4567

require "sinatra"

get "/" do
	"Hello, world!"
end

get "/real_page" do
	"The other page"
end

get "/hi" do
	redirect to("/real_page")
end