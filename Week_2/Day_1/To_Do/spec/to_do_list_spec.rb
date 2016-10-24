require_relative("../to_do_list.rb")

RSpec.describe Task do 

	describe "tests for Task" do 
		
		it "puts task id" do

			task = Task.new("Buy the milk")

			expect(task.id).to eq(1)

		end

	end
end