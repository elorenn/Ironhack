require "sinatra"

# Make a GET request. List what url (homepage) to go to "/" 
# Right now our domain is localhost:4567

get "/" do	
	erb(:home)
end

get "/hi" do 
	erb(:hipage)
end

get "/about" do
	erb(:about)
	#views/about.erb
end