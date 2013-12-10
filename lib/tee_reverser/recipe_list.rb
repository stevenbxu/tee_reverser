# This class is responsible for funneling the data pulled from Yummly
# and processing it into a hash that Reverser can process. 
class RecipeList 
	# This is what we get from Yummly.
	attr_accessor :result
	# This is what we'll be generating from Yummly data. 
	attr_reader :recipehash

# This method defines a new RecipeList, which is receives a data object
# generated from the Yummly API, and produces a hash with recipe names
# for the keys, and an array of ingredients for the values. 
	def initialize(result)
		@result = result
		@recipehash = {}
	end

# This method builds the working hash from Yummly data, and 
# initializes the last entry in the value array with a score
# of 0. 
	def listbuilder
	recipes = result.collect {|recipe| recipe.name}
	elements = result.collect {|recipe| recipe.ingredients}
		for num in 0..recipes.size-1
			@recipehash[recipes[num]]=elements[num]
		end
	@recipehash.each {|k,v| v<<0}
	end
end