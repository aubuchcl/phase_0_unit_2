# Pseudo
# def acc_group
# def local var to see if array size is divisible by 4
# shuffle the array with the shuffle method
# run a quick times loop to notify extra members of their need to join another group
# slice the array into chuncks of 4

# Pseudo Refined
# Define Array#acc_group that will take one arguement
# Name said arguement array
# set the value of array.length % 4 to a local variable(x)
# shuffle the array and set the value of the array to said shuffled version
# run a times loop x times and push a message to extra participants
# call the each_slice method on array 
# have each_slice split by 4's
# tell the block that it should print the groups

# considerations

    # Are there built-in methods to do this in Ruby?
    	# you could always just run shuffle and each_slice but making a new method that
    	# does both is more efficient
    # Will you try to avoid putting the same people together more than once?
    	# I will randomize.  People may be together twice but it will be random
    # If I run this program three times in a row, will the program give me three different outputs? Is that good or bad?
    	# The outputs could technically be the same be it is random so I could not say
    	# I guess it depends on what you are trying to accomplish on whether 
    	# it is good or bad
    # Should it remember past outputs or not?
    	# this solution does not but could by simple setting the call to a var and then
    	# printing the var etc.


# Initial Solution
# def acc_group(array)
# 	x = array.length % 4
# 	array = array.shuffle
# 	x.times do 
# 		array.push("plz join another group")
# 	end
# 	array = array.each_slice(4) {|group| p group}
# end

# Refactored
def acc_group(array)
	x = array.length % 4
	x.times{array.push("Join another group")}
	array.shuffle.each_slice(4){|group| p group}
end




# TDD Code

grewps = ["Adam Dziuk",
"Adam Ryssdal",
"Aki Suzuki",
"Allison Wong",
"Andra Lally",
"Andrew Mcdonald",
"Anup Pradhan",
"Christopher Aubuchon",
"Clark Hinchcliff",
"Devin A Johnson",
"Dominick Oddo",
"Dong Kevin Kang",
"Eiko Seino",
"Eric Wehrli",
"Hunter Chapman",
"Jacob Persing",
"Jon Pabico",
"Mary Huerster",
"Parjam Davoody", "Sebastian Belmar", "Shawn Seibert", "William Butler",
"Yuzu Saijo", 
"Christiane Kammerl"]
puts acc_group(grewps)

# example (to save randomly generated groups):
	# unit1 = acc_group(grewps)
	# puts unit 1
	# unit2 = acc_group(grewps)... etc


# What parts of your strategy worked? What problems did you face?
    #adding nil to non full groups worked.  I faced problems trying to decide what I wanted to do with potential extra people

# What questions did you have while coding? What resources did you find to help you answer them?
    # the main questions I had were about how the should be completed and not about the code itself.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
    # really overarching problem I am having is not knowing if this is "good enough" or if 
    # I guess getting feedback on the code right when it is done would be cool.
# Did you learn any new skills or tricks?
    # slice_by is cool
# How confident are you with each of the learning objectives?
    # pretty confident
# Which parts of the challenge did you enjoy?
    # trying to randomize
# Which parts of the challenge did you find tedious?
# typing the names :)







