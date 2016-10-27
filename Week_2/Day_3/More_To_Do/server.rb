require 'sinatra'
require 'sinatra/reloader' if development?
# We're going to need to require our class files
require_relative('lib/Task.rb')
require_relative('lib/to_do_list.rb')

todo_list = ToDoList.new("Lorena")
todo_list.load_tasks
get "/tasks" do
  erb(:task_index)
end

