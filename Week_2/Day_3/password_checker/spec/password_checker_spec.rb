require_relative("../lib/password_checker.rb")
require "RSpec"

RSpec.describe PasswordChecker do

	describe "check password" do

		it "returns true or valid passwords" do

			checker = PasswordChecker.new

			expect( checker.check_password("nizar@example.com", "aB76*%cz#3") ).to eq(true)
			expect( checker.check_password("nizar@example.com", "uP8&$O20") ).to eq(true)		
		end

		it "returns false for passwords shorter than 8 characters" do
	      # Examples: "aB7*", "uP8&$"
	      checker = PasswordChecker.new

	      expect( checker.check_password("nizar@example.com", "aB7*") ).to eq(false)
	      expect( checker.check_password("nizar@example.com", "uP8&$") ).to eq(false)

	    end

	    it "returns false for passwords without letters" do
	      # Examples: "5876*%62#3", "388&$920"
	      checker = PasswordChecker.new

	      expect( checker.check_password("nizar@example.com", "5876*%62#3") ).to eq(false)
	      expect( checker.check_password("nizar@example.com", "388&$920") ).to eq(false)

	    end

	    it "returns false for passwords without numbers" do
	      # Examples: "aBphg*%cz#f", "uPB&$KZl"

	      checker = PasswordChecker.new

	      expect( checker.check_password("nizar@example.com", "aBphg*%cz#f") ).to eq(false)
	      expect( checker.check_password("nizar@example.com", "uPB&$KZl") ).to eq(false)

	    end

	    it "returns false for passwords without symbols" do
	      # Examples: "aB76vkcz33", "uP869O20"
	      checker = PasswordChecker.new

	      expect( checker.check_password("nizar@example.com", "aB76vkcz33") ).to eq(false)
	      expect( checker.check_password("nizar@example.com", "uP869O20") ).to eq(false)

	    end

	    it "returns false for passwords without uppercase letters" do
	      # Examples: "ab76*%cz#3", "up8&$o20"
	      checker = PasswordChecker.new

	      expect( checker.check_password("nizar@example.com", "ab76*%cz#3") ).to eq(false)
	      expect( checker.check_password("nizar@example.com", "up8&$o20") ).to eq(false)

	    end

	    it "returns false for passwords without lowercase letters" do
	      # Examples: "AB76*%CZ#3", "UP8&$O20"
	      checker = PasswordChecker.new

	      expect( checker.check_password("nizar@example.com", "AB76*%CZ#3") ).to eq(false)
	      expect( checker.check_password("nizar@example.com", "UP8&$O20") ).to eq(false)

	    end

	    # BONUS:
	    it "returns false for passwords with the email username" do
	      # Examples: "aB7nizar6*%cz#3", "unizarP8&$O20"

	      checker = PasswordChecker.new

	      expect( checker.check_password("nizar@example.com", "aB7nizar6*%cz#3") ).to eq(false)
	      expect( checker.check_password("nizar@example.com", "unizarP8&$O20") ).to eq(false)
	      
	    end
 		# BONUS:
	    it "returns false for passwords with the domain" do
	      # Examples: "aB76*example%cz#3", "uP8&example$O20"
	      checker = PasswordChecker.new

	      expect( checker.check_password("nizar@example.com", "aB76*example%cz#3") ).to eq(false)
	      expect( checker.check_password("nizar@example.com", "uP8&example$O20") ).to eq(false)
	      
	    end









	end
end