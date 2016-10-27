require_relative("../lib/to_do_list.rb")
require_relative("../lib/task.rb")

RSpec.describe ToDoList do 

	  # let(:task1) { Task.new("Buy router") }
	  # let(:task2) { Task.new("Return boxes") }
	  # let(:task3) { Task.new("Purchase Soylent") }
	  # let(:empty_list) { TodoList.new }
	  # let(:list) do
	  #   list = TodoList.new

	  #   list.add_task(task1)
	  #   list.add_task(task2)
	  #   list.add_task(task3)

	  #   # Don't forget to return the value!
	  #   list
	  #  end

	let(:task1) { Task.new("Do laundry") }
	let(:task2) { Task.new("Do groceries") }
	let(:task3) { Task.new("Turn in form") }
	let(:list) {ToDoList.new("Lorena") }

	describe "add_task" do 

		it "adds a task to our to do list" do

				list.add_task(task2)

				expect(list.tasks.length).to eq(1)
				expect(list.tasks[0].content).to include("Do groceries")
		end

	end	

	describe "delete_task" do 

		it "deletes task by its id" do
			
			list.add_task(task1)
		 	list.delete_task(task1.id)

		 	expect(list.tasks.length).to eq(0)
		 	#expect(list.tasks[0]).to eq(nil)
		 	#expect(list.tasks).not_to include(task1)
		end
	end

	describe "find_task_by_id" do 

		it "finds a task by id and returns content" do
				list.add_task(task1)
				list.add_task(task2)
				list.add_task(task3)

				# list.find_task_by_id(1)
				# expect(task.content).to eq(@id)
				puts list.tasks.length
				expect(list.find_task_by_id(task1.id)).to eq(task1)
		end
	end

	describe "sort_by_created" do

		it "sorts tasks by time created" do


			list.add_task(task1)
			list.add_task(task2)
			expect(list.sort_by_created).to eq([task1, task2])
		end
	end

end





