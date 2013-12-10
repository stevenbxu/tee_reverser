require '../lib/tee_reverser/pantry.rb'
require 'CSV'

describe Pantry do

	before do
		testquery = "../lib/testlist.txt"
		@pantry = Pantry.new(testquery)
	end

	describe "#parse" do
		it "spits out an array" do
			@pantry.list.is_a? Array
		end
	end
end