require "sinatra"
require_relative("lib/calculator.rb")

get "/" do
  erb(:home)
end

get "/add" do
  erb(:add)
end


get "/subtract" do
  erb(:subtract)
end


get "/multiply" do
  erb(:multiply)
end


get "/divide" do
  erb(:divide)
end


# params[:operation]


