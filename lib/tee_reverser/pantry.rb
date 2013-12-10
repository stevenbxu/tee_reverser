require 'CSV'
# This class is responsible for parsing the user ingredients, delivered
# in a .txt file, and putting it into an array that Reverser can
# work with.
class Pantry
	# This is the user-provided filepath name that parse will use to 
	# generate an array.
	attr_accessor :filepath
	# This is where the pantry ingredients array will be stored.
	attr_reader :list

	# This method creates a new Pantry object that takes the filepath
	# of a text file, and is described by an array of the contents. 
	def initialize(filepath)
		@filepath = filepath
		@list = []
	end

	# This method opens the filepath given and produces a 
	# one-dimensional array called list. 
	def parse
		CSV.foreach(self.filepath) {|row| @list << row}
		@list.flatten!
	end
end
