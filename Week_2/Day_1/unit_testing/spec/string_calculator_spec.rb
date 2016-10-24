# Learning how to write tests! :D 


# ../ refers to going up one file from spec to unit_testing before entering lib: 
require_relative("../lib/string_calculator.rb")

RSpec.describe StringCalculator do 
	describe "unit tests for the add method" do 

		before :each do
			@the_calc = StringCalculator.new
		end

		it "adds two numbers separated by commas" do 
			
			# p the_calculator.add("7,7") == 14 
			expect(@the_calc.add("7,7")).to eq(14)  

			# p the_calculator.add("8,4") == 12
			expect(@the_calc.add("8,4")).to eq(12)
		end

		it "returns the number for a single number" do 
			
			# p the_calculator.add("6") == 6
			expect(@the_calc.add("6")).to eq(6)

			# p the_calculator.add("3") == 3 
			expect(@the_calc.add("3")).to eq(3)
		end

		it 'returns 0 for the empty string' do

			# p the_calculator.add("") == 0 
			expect(@the_calc.add("")).to eq(0)
		end

		it 'returns 0 when no argument given' do

			# p the_calculator.add == 0
			expect(@the_calc.add).to eq(0)
		end

		it 'adds two numbers separated by $ or other symbol not a comma' do

			# p the_calculator.add("7$7") == 14
			expect(@the_calc.add("7$7")).to eq(14)

			# p the_calculator.add("8$4") == 12
			expect(@the_calc.add("8$4")).to eq(12)
		end

		it 'adds multiple numbers separated by commas' do

			# p the_calculator.add("7,7,1,2") == 17 
			expect(@the_calc.add("7,7,1,2")).to eq(17)
		end

		it 'adds multiple numbers separated by or other symbol not a comma' do

			# p the_calculator.add("7$7$1$2") == 17
			expect(@the_calc.add("7$7$1$2")).to eq(17)
		end

		it 'adds multiple numbers separated by both commas and other symbols' do

			# p the_calculator.add("7$7,1,2") == 17
			expect(@the_calc.add("7$7,1,2")).to eq(17)
		end

		it 'adds multiple numbers with multiple digits separated by both commas and other symbols' do

			# p the_calculator.add("7$7,1,21") == 36
			expect(@the_calc.add("7$7,1,21")).to eq(36)
		end
	end
end 



