# Right now our domain is localhost:4567

require 'sinatra'
require 'sinatra/reloader' if development?
# We're going to need to require our class files:
require_relative('lib/Task.rb')
require_relative('lib/to_do_list.rb')


todo_list = ToDoList.new("Lorena")
#todo_list.load_tasks

get "/" do
  erb(:home)
end

get "/list" do
	#@tasks = list.tasks
  erb(:task_index)
end

get "/add_tasks" do
	#@tasks = list.tasks
  erb(:add_tasks)
end

post "/create_tasks" do
	
end