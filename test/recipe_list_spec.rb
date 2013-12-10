require '../lib/tee_reverser/recipe_list.rb'
require 'yummly'

describe RecipeList do

	before do
		Yummly.configure do |config|
		  config.app_id = "bddcbcff"
		  config.app_key = "9245c33f2cc6d6bedb65715d3fb66c61"
		end
		testquery = Yummly.search("fettucini")
		@test = RecipeList.new(testquery)
	end

	describe "#listbuilder" do
		it "takes the results of our test query converts it into a hash." do
			@test.recipehash.is_a? Hash
		end
	end
end