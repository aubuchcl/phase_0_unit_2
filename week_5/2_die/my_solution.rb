# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself ].

# 2. Pseudocode

# Input:the input will be an array of strings
# Output: the output will be #sides which will display the length of the array as sides or 
#  a roll which will return one of the strings from the array(labels) as an array
# Steps:
# 1.initialize labels with @labels
# 2. make an if statement that checks to see if labels is an empty array
# 4. tell sides to return the length of labels
# 5. tell roll to return a sample from labels


# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	@labels = labels
#   	if labels == []
#   		raise ArgumentError.new("your array is empty")
#   	end
#   end

#   def sides
#   	@labels.length
#   end

#   def roll
#   	@labels.sample
#   end
# end



# 4. Refactored Solution
class Die
	def initialize(labels)
		@labels = labels
		if labels == [] then raise ArgumentError.new("Array Empty!")
		end
	end
	def sides
		@labels.length
	end
	def roll
		@labels.sample
	end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(['A', 'B','C','D','E','F','G'])
p die.sides != 0 #makes sure that sides are above 0 
p ["A".."Z"].any?{|val| die.roll} # is the value from die.roll a string from a 2 z
p Die.new([])#force error message to see if it is working






# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# 	My strategy was to look at all of the driver code and its errors and develop a good understanding
# 	of what I am trying to solve with this code.  I faced a small problem with calling #any? because I
# 	had the order of values wrong.
# What questions did you have while coding? What resources did you find to help you answer them?
# 	The only question I had was trying to figure out a test for the die.roll.  I found the answer on ruby docs
# 	under the enumerable#any?.  I was able to employ this call to check to see if ["A".."Z"] held the value of
# 	the die.roll call.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# 	I guess the main concept I am having trouble with is writing driver code from the errors and 
# 	then not changing it when I get done writing the code.  As of today I have been writing the driver,
# 	and then the psuedo, followed by the initial code.  I am running the initial code through the test
# 	that is provided and then if it passes running it against my driver code.  I am conflicted between
# 	this being a skill building exercise or is it the easy way to do it.  On one hand I am learning
# 	a lot about getting my driver code to work, but it has less value if I dont have a test to use to
# 	make sure my code is working in the first place.
# Did you learn any new skills or tricks?
# 	I think this is the first time I use #any?
# How confident are you with each of the learning objectives?
# 	Rather confident 
# Which parts of the challenge did you enjoy?
# 	learning #any? will be helpful I enjoyed that.
# Which parts of the challenge did you find tedious?
# 	none really.