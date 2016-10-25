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
	let(:list) {ToDoList.new }

	describe "add_task" do 

		it "adds a task to our to do list" do

				list.add_task("Do laundry")
				expect(list.tasks.length).to eq(1)
				expect(list.tasks).to include("Do laundry")
		end

	end	

	describe "delete_task" do 

		it "deletes task by its id" do

		 	list.delete_task(task1.id)

		 	expect(list.tasks).not_to include("Do laundry")
		end

	end
end