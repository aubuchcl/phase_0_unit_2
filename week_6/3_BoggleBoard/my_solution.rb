# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
	def initialize(dice_grid)
		@dice_grid = dice_grid
	end

	def dice_grid
		@dice_grid
	end

	def create_word(*coords)
    coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
  end

  def get_row(row)
		return @dice_grid[row]
	end

	def get_column(column)
    x = 0
    while x < @dice_grid.length
        puts @dice_grid[x][column]
        x += 1
    end
   end

   def get_diagonal(x, y)
   	new_arr = []
   	if y >= x
	   	max_char = 4 - y
	   	max_char.times do |action|
	   		new_arr << @dice_grid[x][y]
	   		x += 1
	   		y += 1
	   	end
   	elsif x > y
   		max_char = 4 - x
   		max_char.times do |action|
   		new_arr << @dice_grid[x][y]
   		x += 1
   		y += 1
   		end
   	end

   	new_arr.join("")
   end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution

#I accidently refactored it in the initial solution space.  My change was
to the diagonal method.  I changed the initial definition the following way

# It was 
# max_value = 4 - y
# max_char.times do |action|
# 	   		new_arr << @dice_grid[x][y]
# 	   		x += 1
# 	   		y += 1
# 	   	end
# I changed that because it didnt take into account if someone put in a value of more than 1 for x



class BoggleBoard
	def initialize(dice_grid)
		@dice_grid = dice_grid
	end

	def dice_grid
		@dice_grid
	end

	def create_word(*coords)
    coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
  end

  def get_row(row)
		return @dice_grid[row]
	end

	def get_column(column)
    x = 0
    while x < @dice_grid.length
        puts @dice_grid[x][column]
        x += 1
    end
   end

   def get_diagonal(x, y)
   	new_arr = []
   	if y >= x
	   	max_char = 4 - y
	   	max_char.times do |action|
	   		new_arr << @dice_grid[x][y]
	   		x += 1
	   		y += 1
	   	end
   	elsif x > y
   		max_char = 4 - x
   		max_char.times do |action|
   		new_arr << @dice_grid[x][y]
   		x += 1
   		y += 1
   		end
   	end

   	new_arr.join("")
   end
 
end




# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
new_word = BoggleBoard.new(dice_grid)
puts new_word.create_word([1,2],[1,1],[2,1],[3,2])
puts new_word.get_row(1)
puts new_word.get_row(2)
puts new_word.get_row(3)
puts new_word.get_row(0)
puts new_word.get_column(1)
puts new_word.get_column(2)
puts new_word.get_column(3)
puts new_word.get_column(0)
puts new_word.get_diagonal(0, 0)
puts new_word.get_diagonal(0, 1)
puts new_word.get_diagonal(1, 0)
puts new_word.get_diagonal(2, 2)


# 5. Reflection 



# What parts of your strategy worked? What problems did you face?
#   I just went through my code from last week and formatted it to work in one class.
# What questions did you have while coding? What resources did you find to help you answer them?
#   I was wondering how to get the values passed to #get_diagonal to iterate the amount of times I wanted them to.  I used a pen and paper to do the math.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
#   Not many problems with this challenge.
# Did you learn any new skills or tricks?
#   I learned how to reformat code so that it works on another class definition.  I origionally had the methods defined under class array so it was interesting to pass the dice_grid value to them through an instance variable.
# How confident are you with each of the Learning Competencies?
#   Rather confident
# Which parts of the challenge did you enjoy?
#   reformatting the origional code
# Which parts of the challenge did you find tedious?
#   figuring out a way to iterate a certain number of times that changes dynamically.


# You just made a transition from procedural programming to object-oriented
# programming! How is the implementation different? What are the benefits to
# using the Object Oriented approach (even if it is a bit more code?) Make
# sure to include your reflection in your gist.

  # This is an interesting question to me.  

  # from http://en.wikipedia.org/wiki/Procedural_programming#Comparison_with_object-oriented_programming
 # The focus of procedural programming is to break down a programming task
 # into a collection of variables, data structures, and subroutines, whereas
 # in object-oriented programming it is to break down a programming task into
 # objects that expose behavior (methods) and data (members or attributes)
 # using interfaces. The most important distinction is that while procedural
 # programming uses procedures to operate on data structures, object-oriented
 # programming bundles the two together, so an "object", which is an instance
 # of a class, operates on its "own" data structure. [2]

# Nomenclature varies between the two, although they have similar semantics

# So I guess that I didn't really realise how much of a change we have made in these short
# couple of weeks.  After reading up on it a little bit, I can say that the implementation 
# is noticeable due to the fact that our programs are almost interactive at this point.
# The implementation seems to different in the testing.  The development steps are somewhat
# the same: break down problem into steps, pseudo, intial, and refactor.  I would
# say the main thing I have noticed is how each step must be tested to see if it is working
# and making sure that it is returning the correct information on a more specific level.
# I would attribute this to the idea that we are working with a living program and not a 
# static output.  The oop approach is way better due to its flexibility and capabilities to 
# use the same code to perform multiple tasks.  Overall I think it is an awesome progression!
