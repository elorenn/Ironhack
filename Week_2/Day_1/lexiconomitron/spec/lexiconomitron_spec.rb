require_relative("../lib/lexiconomitron.rb")

describe Lex do 

  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lex.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end

  describe "#shazam" do
  	it "Reverses each word in array and returns first and last without t's" do
  		@lexi = Lex.new
  		expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
  	end
  end

  describe "#oompa_loompa" do
  	it "Returns only words that are less than or equal to 3 characters and removes t's" do
  		@lexi = Lex.new
  		expect(@lexi.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
  		expect(@lexi.oompa_loompa(["Gotta", "get", "with", "my", "friends"])).to eq(["Goa", "ge", "wih", "my"])
  	end
  end
end