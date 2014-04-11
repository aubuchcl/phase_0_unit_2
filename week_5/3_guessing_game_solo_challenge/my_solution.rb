# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:an integer
# Output:if guess is wrong returns either to high or too low if solved returns solved
# Steps:
#1. Define guessing game
#2. Define initialize to take an integer(answer)
#3.create instance method #guess that recieves an integer
#4. create if /else 
#5. make if guess > answer :high
#6. make if guess == answer :correct
#7. make if guess < answer :low
#8. define instace method #solved
#9. have # solved return true or false by making an if/else/then branch
# that returns true if most recent guess was :correct and false if not


# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end
 	

#  	def guess(guess)
#  		@guess = guess
#  		if @guess > @answer
#  			return :high
#  		elsif @guess == @answer
#  			return :correct
#  		elsif @guess < @answer
#  			return :low
#  		end
#  	end
#  	def solved?
#  		if @guess == @answer
#  			 true
#  		else
#  			false
#  		end
#  	end
 			
 	
# end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
 	def guess(guess)
 		@guess = guess
 		if @guess > @answer then return :high
 		end
 		if @guess == @answer then return :correct
 		end
 		if @guess < @answer then return :low
 		end
 	end
 	def solved?
 		if @guess == @answer
 			 true
 		else
 			false
 		end
 	end
 			
 	
end




# 1. DRIVER TESTS GO BELOW THIS LINE


game = GuessingGame.new rand(100)
last_guess  = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"


# 5. Reflection 


# What parts of your strategy worked? What problems did you face?
# 	The part of my strategy that worked the best was writing down
# 	all the steps in my Pseudocode almost line by line so that I could
# 	follow them easily.  I initially tried using a hash and calling the value
# 	but the symbol turned into a string.
# What questions did you have while coding? What resources did you find to help you answer them?
# 	I did this assignment without using the web other than given materials(the gist).
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# 	I was not sure if we were actually supposed to write our own driver code for this or not.
# 	I assumed, due to the specific nature of the driver given on the gist,
# 	that we were to use that code.
# Did you learn any new skills or tricks?
# 	I applied what I have learned this week and didn't really need anything "new".
# How confident are you with each of the learning objectives?
# 	I am extremely confident after completing this assignment with no web research.
# Which parts of the challenge did you enjoy?
# 	I liked making this code and interacting with it.  It was really cool to see the program
# 	working to find me a solution. 
Which parts of the challenge did you find tedious?

