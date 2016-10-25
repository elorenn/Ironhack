require_relative("../lib/to_do_list.rb")
require_relative("../lib/task.rb")

RSpec.describe ToDoList do 

		describe "tests for To Do List" do 

			it "adds a task to our to do list" do

				list = ToDoList.new 

				list.add_task("Do laundry")
				expect(@tasks).to eq(["Do laundry"])
			end

		end	
end