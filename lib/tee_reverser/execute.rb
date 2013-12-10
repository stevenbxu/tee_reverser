module TeeReverser
	# This method runs the program. 
	def self.execute
	Yummly.configure do |config|
		  config.app_id = "bddcbcff"
		  config.app_key = "9245c33f2cc6d6bedb65715d3fb66c61"
		end
		puts "Please give me the filepath of your pantry list, in .txt format."
		puts "Your list will ideally have any each ingredient you wish to itemize in its own line."
		location = gets.chomp
		#ensures only proper objects get loaded
		until /.txt/.match(location.to_str) && File.exists?("#{location}") do
		  puts "Please give me a valid filepath and name. File must exist and be in *.txt format."
		  location = gets.chomp
		end
		goods = Pantry.new(location)
		goods.parse
		puts "What kind of dish would you like to make?"
		wishlist = gets.chomp
		puts " "
		puts "-------------------C O N N E C T I N G---------------------"
		puts " "
		query = Yummly.search("#{wishlist}")
		meal = RecipeList.new(query)
		meal.listbuilder
		puts " "
		puts "---------------------T H I N K I N G-----------------------"
		puts " "
		decisions = Reverser.new(goods.list, meal.recipehash)
		decisions.reverse
		decisions.choose
		return "Bon appetit!"
	end
end