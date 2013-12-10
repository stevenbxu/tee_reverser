# This class is responsible for comparing the list generated from Pantry
# and the hash generated from RecipeList, and delivering the recipes with 
# the maximum number of ingredient matches. 

class Reverser

	# This is the array of ingredients that we receive from performing Pantry.parse.
	attr_accessor :pantrylist
	# This is the hash of recipes/ingredients that we processed (via Yummly) with RecipeList.
	attr_accessor :tee
	# This is a hash of recipes, sorted by score, in the form of an Array. 
	attr_reader :eat

	# This creates a new Reverser object, which is described by a sorted hash in the form
	# of an Array of Arrays.
	def initialize(pantrylist, tee)
		@pantrylist = pantrylist
		@tee = tee
		@eat = Hash.new
	end

# This method is responsible for first, comparing our ingredients with 
# the recipes' ingredients, and then updating the recipe hash with 
# the corresponding match scores, and then sorting the hash by that score. 
	def reverse	
		@tee.each do |k,v|
 		templist = v.join(" ")
 			for num in 0..@pantrylist.size-1
 				@tee[k][-1]+=1 if /#{@pantrylist[num]}/.match(templist)
 			end
 		end
 		@eat = @tee.sort_by{|k,v| v[-1]}
 	end

# This method concludes the Execute method, and churns out the top 2 
# recipe picks for the end user to pick from.
 	def choose
 		puts "Your best options are #{@eat[-1][0]}, and #{@eat[-2][0]}. You already have #{@eat[-1][-1][-1]}, and #{@eat[-2][-1][-1]} ingredients for each of those, respectively."
 		puts " "
 		ingredients1 = @eat[-1][-1]
 		ingredients1.pop
 		ingredients2 = @eat [-2][-1]
 		ingredients2.pop
		puts "The ingredients for #{@eat[-1][0]} are: #{ingredients1.join(", ")}."
		puts " "
		puts "The ingredients for #{@eat[-2][0]} are: #{ingredients2.join(", ")}."
		puts " "
 	end
end