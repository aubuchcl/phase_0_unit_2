# I worked on this by myself

# Pseudo 
# def new method sep_comma
#  allow it to take one parameter
#  convert that parameter to a string or int
#  figure out a way to add a comma to each 
	# use bytesize
	# reverse it 
	# use while loop where var(x) = eventual full bytesize 
	# add to random  by 3
	# each loop add an insert index x - 1 "," until x reaches bytesize or greater
	# reverse it again 
	# return the value

# def sep_comma(num)
# 	x = 0
# 	y = 0
# 	num = num.to_s
# 	size = num.bytesize
# 	if size <= 3 
# 	 return num
# 	end
# 	num = num.reverse
# 	while x <= size
# 		x = 3 + y
# 		num.insert((x), ",")
# 		y += 4
# 		if (size - y) < 3
# 			return num.reverse
# 		end
# 	end
	
# 	num.reverse
# end






def sep_comma(num)
	num = num.to_s
	size = num.bytesize
	case
	when size < 4
		return num
	when size >= 4 && size < 7
		return num.insert((size - 3), ",")
	when size >= 7 && size < 10
		return num.insert((size - 6), ",").insert((size - 2), ",")
	when size >= 10 && size < 13
		return num.insert((size - 9), ",").insert((size - 5), ",").insert((size - 1), ",")		
	when size >= 13 && size < 16
		return num.insert((size - 12), ",").insert((size - 8), ",").insert((size - 4), ",").insert((size), ",")
	else
		return "I dont have that answer"
	end
	num
end


# use case with 4-6, 7-9 , etc as length with appropriate inserts
# doesnt work
# algo that finds the diff between length and where commas go
# bytesize < 4 no comma
# bytesize 4 pos 1
# siz 5 pos 2
# siz 6 pos 3
# siz 7 pos 1 and pos 5
# siz 8 pos 2 and pos 6
# siz 9 pos 3 and pos 7
# siz 10 pos 1 and pos 5 and pos 9
# siz 11 pos 2 and pos 6 and pos 10
# siz 12 pos 3 and pos 7 and pos 11
# siz 13 pos 1 and pos 5 and pos 9 and pos 13







	# TDD code
puts sep_comma(100) == "100"
puts sep_comma(1000) == "1,000"
puts sep_comma(10000) == "10,000"
puts sep_comma(100000) == "100,000"
puts sep_comma(1000000) == "1,000,000"
puts sep_comma(10000000) == "10,000,000"

# reflection


# What parts of your strategy worked? What problems did you face?
	# I thought it was hard to get the program to run at the different stages without overlapping ex million to billion
# What questions did you have while coding? What resources did you find to help you answer them?
	# #insert syntax.  I found it on ruby docs
# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#probably mostly having trouble with looking at a problem and figuring out what really
	# needs to happen to make the program automate or use an algo.
# Did you learn any new skills or tricks?
	# .bytesize instead of length
# How confident are you with each of the learning objectives?
	# somewhat
# Which parts of the challenge did you enjoy?
	#when it finally worked
# Which parts of the challenge did you find tedious?
	# I missed a character in one of the calls or assignments(I almost cant remember now)
	#anyway it bugged my program and I couldnt figure out what was going on everything seemed fine
	#long story short it took me a while to find and that felt tedious.





