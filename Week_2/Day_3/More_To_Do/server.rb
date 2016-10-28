# Right now our domain is localhost:4567

require 'sinatra'
require 'sinatra/reloader' if development?
# We're going to need to require our class files:
require_relative('lib/Task.rb')
require_relative('lib/to_do_list.rb')


todo_list = ToDoList.new("Lorena")
# Task.new("Do laundry") 
# Task.new("Do groceries") 
# Task.new("Turn in form") 

#todo_list.load_tasks

get "/" do
	@task = todo_list.tasks
  erb(:task_index)
end

get "/add_tasks" do
	@task = todo_list.tasks
  erb(:add_tasks)
end

post "/create_task" do
	new_task = Task.new(params[:new_task])

	todo_list.add_task(new_task)
	# todo_list.save
	redirect to ("/add_tasks")
end


#params are hashes, so "key => value"

post "/complete_task/:id" do
	thing_to_do = params[:button]
	search = (params[:select_item])
	search.map!{|x| x.to_i}

	search.each do |x|
		task = todo_list.find_task_by_id(x)
		if thing_to_do == "complete"
			task.complete!
		elsif thing_to_do == "delete"
			todo_list.delete_task(x)	
		end
	end  

	# puts "BANANAA"
	# puts params[:mark_as_complete]
	# puts params[:mark_as_complete].class 
	# puts search.class

	# todo_list.save
	redirect to ("/add_tasks")
end

post "/delete_task/:id" do 
	search = (params[:select_item]).to_i
	task = todo_list.delete_task(search)


	redirect to ("/add_tasks")
end
