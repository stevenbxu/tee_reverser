require 'yummly'
# TeeReverser: (Tee => Eet...eat!)
# Author::    Steven Xu (mailto: steven.b.xu at gmail.com)
# Copyright:: Copyright (c) 2013, Steven Xu
# License::   The MIT License (MIT)
#
# TeeReverser is a gem that assists in the complex decision making
# process that is deciding what to cook. Given a text file with a list of ingredients
# that you own in your very own pantry, as well as a desired dish that you wish
# to make, TeeReverser returns two recipes from Yummly.com that 
# have the best match with your pantry -- thereby saving you an average of 
# four seconds of decision making every time! 
#
# To run, require 'tee_reverser' and enter TeeReverser.execute in the command
# line. TeeReverser requires the Yummly and CSV gems to run. 

module TeeReverser
	require 'tee_reverser/reverser.rb'
	require 'tee_reverser/recipe_list.rb'
	require 'tee_reverser/pantry.rb'
	require 'tee_reverser/execute.rb'
end
