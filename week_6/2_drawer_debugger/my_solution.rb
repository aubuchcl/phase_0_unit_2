# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?
# just needed a method to run tests off of. 

	def initialize
		@contents = []
		@open = true
		@drawer_test = drawer_test
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)#first error was wrong arguement number so I allowed add_item to take a parameter
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? setting the value of item to the first element of  @contents
		@contents.delete(item)
	end

	def dump 
		while @contents.length > 0
			@contents.pop
		end # what should this method return? IT should make @contents empty
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end

	def drawer_test
		if @contents.length >= 1
			true
		else
			false
		end
	end


end

class Silverware
	attr_reader :type

# Are there any more methods needed in this class?
# needs a clean_silverware method, a clean method, and a method to run tests off of

	def initialize(type, clean = true)
		@type = type
		@clean = clean
		@eat = eat
		
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end
	def clean_silverware#added a clean silverware method to clean the silverware
		if @clean == false
			puts "Its a good thing you washed that #{@type}."
			@clean = true
		end
	end

	def clean
		if @clean == true
			puts "The #{@type} is clean and ready to use."
		end
	end
	def sil_test
		if @type != nil
			true
		else
			false
		end
	end

	


end


	knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? an empty drawer

fork = Silverware.new("fork") #drawer was empty from dump
silverware_drawer.view_contents # making sure drawer is still empty
silverware_drawer.add_item(fork) #adding fork so we can eat
silverware_drawer.view_contents #making sure fork is in the drawer
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
# puts fork.clean
fork.clean_silverware
puts fork.clean


# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion Failed" unless yield
end

assert { test = Drawer.new
					test.drawer_test == false}
assert {test = Silverware.new("fork")
					test.sil_test == true}




# 5. Reflection 

    # What parts of your strategy worked? What problems did you face?
    # 	My strategy was to go through each error individually and correct them one at a time.  The only problem I faced was finding the first end that was missing which only took a second after indenting correctly.
    # What questions did you have while coding? What resources did you find to help you answer them?
    # 	I was wondering if I was doing the assignment correctly.  The resources I used was my first assignment on assert statements.
    # What concepts are you having trouble with, or did you just figure something out? If so, what?
    # 	These concepts were all pretty easy.
    # Did you learn any new skills or tricks?
    # 	I did learn that you can take an object and manipulate it using different classes.
    # How confident are you with each of the Learning Competencies?
    # 	Pretty confident.
    # Which parts of the challenge did you enjoy?
    # 	debugging code instead of writing it from scrach was fun.
    # Which parts of the challenge did you find tedious?
    # 	trying to figure out which class to modify to correct errors.
