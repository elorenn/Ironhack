require_relative("../lib/fizz_buzzer.rb")

RSpec.describe FizzBuzzer do 
	describe "unit tests for the fizz_buzz method" do 

		it "prints the number" do

			the_fzbz = FizzBuzzer.new 

			# p the_fzbz.fizz_buzz(7) == "7"
			expect(the_fzbz.fizz_buzz(7)).to eq("7")

			# p the_fzbz.fizz_buzz(11) == "11"
			expect(the_fzbz.fizz_buzz(11)).to eq("11")
		end


		it "prints Fizz for numbers divisible by 3" do 

			the_fzbz = FizzBuzzer.new 

			# p the_fzbz.fizz_buzz(9) == "Fizz"
			expect(the_fzbz.fizz_buzz(9)).to eq("Fizz")

			# p the_fzbz.fizz_buzz(12) == "Fizz"
			expect(the_fzbz.fizz_buzz(12)).to eq("Fizz")
		end

		it "prints Buzz for numbers divisible by 5" do

			the_fzbz = FizzBuzzer.new 

			# p the_fzbz.fizz_buzz(10) == "Buzz"
			expect(the_fzbz.fizz_buzz(10)).to eq("Buzz")

			# p the_fzbz.fizz_buzz(25) == "Buzz"
			expect(the_fzbz.fizz_buzz(25)).to eq("Buzz")
		end

		it "prints FizzBuzz for numbers divisible by both 3 and 5" do

			the_fzbz = FizzBuzzer.new 
			
			# p the_fzbz.fizz_buzz(15) == "FizzBuzz"
			expect(the_fzbz.fizz_buzz(15)).to eq("FizzBuzz")

			# p the_fzbz.fizz_buzz(30) == "FizzBuzz"
			expect(the_fzbz.fizz_buzz(30)).to eq("FizzBuzz")
		end

	end
end