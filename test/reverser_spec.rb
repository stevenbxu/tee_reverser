require '../lib/tee_reverser/reverser.rb'

describe Reverser do

	before do
		testpantry = ["salt","pepper","chicken"]
		testtee = {"Salt n Pepa Chicken" => ["salt","pepper","chicken",0]}
		@reverser = Reverser.new(testpantry, testtee)
	end

	describe "#reverse" do
		it "matches values in pantrylist with tee and updates the score" do
			@tee["Salt n Pepa Chicken"][-1] == 3
		end

		it "creates an array from tee" do
			@eat_is.a Hash?
		end
	end
end