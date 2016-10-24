require_relative("../to_do_list.rb")

RSpec.describe Task do 

	describe "tests for To Do List" do 
		
		it "puts number of task id" do

			task = Task.new("Buy the milk")
			task2 = Task.new("Wash the car")

			expect(task.id).to eq(1)
			expect(task2.id).to eq(2)
		end

		it "returns whether or not an instance of a task is done" do

			task = Task.new("Buy the milk")

			expect(task.complete?).to eq(false)
		end	

		it "changes the completed attribute of the task to true" do

			task = Task.new("Buy the milk")
			task.complete!
			expect(task.complete?).to eq(true)
			#expect((task.complete!).complete?).to eq(true)
		end
	end
end