require_relative("../lib/Task.rb")

RSpec.describe Task do 

	describe "task id" do 

		it "puts number of task id" do

			task = Task.new("Buy the milk")
			task2 = Task.new("Wash the car")

			expect(task.id).to eq(1)
			expect(task2.id).to eq(2)
		end
	end

	describe "complete?" do

		it "returns whether or not an instance of a task is done" do

			task = Task.new("Buy the milk")

			expect(task.complete?).to eq(false)
		end	
	end

	describe "complete!" do

		it "changes the completed attribute of the task to true" do

			task = Task.new("Buy the milk")
			task.complete!
			expect(task.complete?).to eq(true)
		end
	end

	describe "make_incomplete!" do

		it "changes the completed attribute of the task to false" do 

			task = Task.new("Buy the milk")
			task.complete!
			task.make_incomplete!
			expect(task.complete?).to eq(false)
		end
	end

	describe "created_at" do

		it "checks created at time" do

			task = Task.new("Buy the milk")

			expect(task.created_at).to be_within(0.1).of(Time.now) 
		end	
	end

	describe "update_content!" do

		it "updates the task's text" do 

			task = Task.new("Walk the milk")
			task.update_content!("Walk the dog")
			expect(task.content).to eq("Walk the dog")
		end
	end

	describe "updated_at" do

		it "makes updated_at attribute equal to now" do
			task = Task.new("Walk the milk")
			task.update_content!("Walk the dog")
			expect(task.updated_at).to be_within(0.1).of(Time.now) 
		end
	end
end