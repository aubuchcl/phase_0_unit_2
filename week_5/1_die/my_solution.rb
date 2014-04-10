# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself ].

# 2. Pseudocode

# Input: number of *sides 
# Output:random number between 1-6
# Steps: 
# 1. add the instance variable @sides set to sides so that we can pass in data
# 2. add an arguement error if sides is < 1
# 3. tell #sides to return the value of @sides puts @sides
# 4. tell #roll that we want it to return a random value between 1-the value of sides(@sides)


# 3. Initial Solution

# class Die
#   def initialize(sides)
#     if sides < 1
#     	raise ArgumentError.new("not enough sides")
#     end
#     @sides = sides
#   end
  
#   def sides
#     p @sides
#   end
  
#   def roll
#     1 + rand(@sides)
#   end
# end



# 4. Refactored Solution
class Die
	def initialize(sides)
		if sides < 1 then raise ArgumentError.new('not enough sides')
		end
		@sides = sides
	end
	def sides
		@sides
	end
	def roll
		1+rand(@sides)
	end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(6)
p die.sides >= 1
p die.roll < 7
p Die.new(0)






# 5. Reflection 
# I was happy to see that this was the first exercise.  It brought me back to the socrates
# exercise's that we did before phase 0 and I had something to work on that solidified
# a couple of those concepts such as instantiation and instance variabls.  Something that 
# I was thinking (not sure if I am right or wrong) is that creating classes is a lot like making
# methods.  In reality we are just adding to the already established pool of classes
# so that we can make custom solutions to problems, just as when we make methods we were making
# custom soultions on a much smaller scale.  A class is a lot like a masterMethod or a method
# that can create more methods within itself(just a reflection of my understanding at this point
# 	so that I can reference my learning patterns).  

# What parts of your strategy worked? What problems did you face?
# 	My strategy for this week is to strictly follow protocol on what is said to be done.  I am a bit
# 	of loose cannon when it comes to getting things done, meaning that I like to get straight
# 	to the problem and work from there.  This has lead me to miss a lot of what the program 
# 	is designed to include which is foundational problem solving through acting methodically(man i wish there
# 		was spell check in sublime lol).  Anyway this strategy was really enlightening.  It makes so much more sense
# 	to work on the problem with these steps completed.  The main problem I had/have is I am not sure
# 	if my ArgumentError is working correctly or if it is erroring itself.
# What questions did you have while coding? What resources did you find to help you answer them?
# 	I used socrates because their is an example of this problem that was part of our prep for phase 0.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# 	I am not sure what concepts I am really having trouble with, its just a matter of memorizing syntax for
# 	all these different situations that is really difficult for me.
# Did you learn any new skills or tricks?
# 	Yes.  The raise command was really cool.
# How confident are you with each of the learning objectives?
# 	I am 3.789 out of 5 confident with the learning objectives from this question.  I could easily 
# 	do another problem with the same set of issue's(slightly varying) with little to no research.  I think
# 		the only thing I would really need to look at would be the formatting for what goes where etc.
# 		other than that I am confident in being able to use these objectives in the future. 
# Which parts of the challenge did you enjoy?
# 	I enjoy almost every part of every challenge.  Not to be overly happy with small steps but when
# 	I was working on code during the online classes I took over the last year or so I had a really 
# 	hard time and I never felt like I was progressing.  It was demoralizing and always left me feeling lousy.
# 	So when I say I enjoy all the parts, I really mean it.  Making the test code work.  Understanding simple syntax.
# 	Building my vocabulary.  Every time I understand something it makes me feel like I have found a method
# 	of learning that is truly beneficial to my learning style and that I can do it and I will learn to be
# 		an awesome programmer.

# Which parts of the challenge did you find tedious?
# 	Trying to figure out if my arugementerror is working or not.  Also spelling argument arguement(with an extra e) is 
# 	stressful.
