# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
#create a statement that will print to screen
#tell that statement to pull form boggle_board
#tell that statement which letters to pull

#refactor pseudo
#I came back to this after doing the other two assignments because
# I wasn't sure if we were just using this as an example or refactoring it.
# => I took the origional solution and made it so that any nested array could be used.



# Initial Solution
 def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?



# Refactored Solution

class Array
    def create_word(*cords)
        cords.map {|cord| self[cord.first][cord.last]}.join("")
    end
end

#this took me about an hour to figure out

# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board.create_word([0,1], [0,2], [1,2])#rad
puts boggle_board.create_word([2,0], [3,1], [3,0]) #eat
puts boggle_board.create_word([2,3], [3,3], [2,2], [3,1],[3,0],[2,0]) #relate

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
#open class array
#define the new method
#allow parameter to represent row
#tell method to return all values for that row


# Initial Solution
class Array
	def get_row(row)
		return self[row]
	end
end

# Refactored Solution
#I am not sure of any way to change this.  I made the method this way as
# to make it possible to call on any nested array, in case the boggle board changes.


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
#open class array
#define the new method
#allow the parameter to represent the column
#tell the method to return all values for that column
# Initial Solution
class Array
    def get_column(column)
        new_arr = []
        x = 0
        while x < self.length
            new_arr << self[x][column]
            x += 1
        end
        return new_arr
	end
end

# Refactored Solution
class Array
    def get_column(column)
        x = 0
        while x < self.length
            puts self[x][column]
            x += 1
        end
    end
end

# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board.get_column(2)
puts boggle_board.get_column(1)
# Reflection 


# # What parts of your strategy worked? What problems did you face?
# 	The main part of my strategy was to implement new Array#methods so that this code could be used on
# 	array's other than the ones provided.  I faced problems with the formatting, but they were only minor setbacks
# # What questions did you have while coding? What resources did you find to help you answer them?
# 	I really don't remember.  I kinda zoned out and just made it work.  It was a really wierd
# 	feeling but it was kinda zen.  When I was done my mind was pretty clear. 
# 	I didnt really look anything up for this.
# # What concepts are you having trouble with, or did you just figure something out? If so, what?
# 	I figured out how it feels to try being creative with a solution and having it work.
# # Did you learn any new skills or tricks?
# 	I moreso refined current skills
# # How confident are you with each of the learning objectives?
# 	Rather confident
# # Which parts of the challenge did you enjoy?
# 	Refactoring part 1
# # Which parts of the challenge did you find tedious?
# 	none
