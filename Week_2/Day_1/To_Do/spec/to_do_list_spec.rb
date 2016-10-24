require_relative("../to_do_list.rb")

RSpec.describe Task do 

	describe "tests for Task" do 
		
		it "puts task id" do

			task = Task.new("Buy the milk")
			task2 = Task.new("Wash the car")

			expect(task.id).to eq(1)
			expect(task2.id).to eq(2)
		end

	end
end