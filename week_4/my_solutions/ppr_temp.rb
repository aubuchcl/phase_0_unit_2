# I worked on this challenge by myself.




def essay_writer(title, topic, date, thesis_statement, gender)
	if gender == "male"
		gender = "he"
		mod = "his"
	else 
		gender = "she"
		mod = "her"
	end
title = "						#{title}\n					composed by:  Christopher Aubuchon"

return "#{title}\n \n \n#{topic}, oh man let me tell you about #{topic}!  First of
all #{topic} was a baby at one point in #{mod} life.  Also #{gender} was really bad a swimming in saltwater.
Why is that important?  We should remeber that just because #{gender} was a great contributor, #{gender} was 
born the same as you and I.  #{mod.capitalize} most important contribuiton was #{thesis_statement} around #{date}.
#{mod.capitalize} influence was felt for generations!"
end
# driver


puts essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years", "male") 
puts essay_writer("Pet Detective", "Ace Ventura", 1996, "The pet detective's most important contribution was saving a rare bat from extinction", "male")





# What parts of your strategy worked? What problems did you face?
	# My strat was to just make the template as simple as possible so that it could be edited.

# What questions did you have while coding? What resources did you find to help you answer them?
	# not many pretty straight forward assignment.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
	# none here
# Did you learn any new skills or tricks?
	# not really learned new but I did pay with spacing so that the title and author are somewhat centerd to the text.

# How confident are you with each of the learning objectives?
# pretty confident
# Which parts of the challenge did you enjoy?
	# wishing that I had this in high school/college
# Which parts of the challenge did you find tedious?
	# none this was fun.