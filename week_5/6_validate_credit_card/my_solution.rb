# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:credit card number
# Output:true or false for valid/invalid card number
# Steps:
#initialize CreditCard that takes number
#make number an instance variable
#raise argument error if number.length is less than or more than 16
# create method check_card
# tell check_card to take the @number and make it a string
# make that string an array
# map the elements to integers
# loop through the array and make the changes to the values
# reset the number by calling join to_i
# then repeat from top
# sum the total of the new array
#run an if then block 


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard
# 	def initialize(number)
# 		@number = number
# 		if @number.to_s.bytesize != 16
# 			raise ArgumentError.new("Please enter a vaild length card number")
# 		end
# 	end

# 	def check_card
# 		sum = 0
# 		y = 0
# 		holder = []
# 		que = []
# 		@number.to_s.each_char{|x| holder << x}
# 		holder.map!{|x| x.to_i}
# 		holder.reverse!
# 		while y < holder.length
# 			holder[y + 1] = holder[y + 1] * 2
# 			y += 2
# 		end
# 		holder.reverse!
# 		holder.join.to_i.to_s.each_char{|x| que << x}
# 		que.map!{|x| x.to_i}
# 		que.each{|x| sum += x}
# 		if sum % 10 == 0
# 			return true
# 		else
# 			return false
# 		end
# 	end



# end



# 4. Refactored Solution

class CreditCard
	def initialize(number)
		@number = number
		if @number.to_s.bytesize != 16
			raise ArgumentError.new("Please enter a vaild length card number")
		end
	end

	def check_card
		sum = 0
		y = 0
		holder = []
		que = []
		@number.to_s.each_char{|x| holder << x}
		holder.map!{|x| x.to_i}.reverse!
		while y < holder.length
			holder[y + 1] = holder[y + 1] * 2
			y += 2
		end
		holder.reverse!.join.to_i.to_s.each_char{|x| que << x}
		que.map!{|x| x.to_i}.each{|x| sum += x}
		if sum % 10 == 0
			return true
		else
			return false
		end
	end



end




# 1. DRIVER TESTS GO BELOW THIS LINE
new_card = CreditCard.new(4408041234567892)
puts new_card.check_card 

good_card = CreditCard.new(4408041234567893)
puts good_card.check_card

bad_num = CreditCard.new(234234)
puts bad_num 




# 5. Reflection 


What parts of your strategy worked? What problems did you face?
	My strategy was to manipulate the data with public methods.  Order of operations(if you will) of what you can do to strings, integers, and arrays was the main problem
What questions did you have while coding? What resources did you find to help you answer them?
	I was in irb the entire time.  I had lots of questions but I just kept trying different solutions until the code worked
What concepts are you having trouble with, or did you just figure something out? If so, what?
	I figured out that irb isn't so scary.
Did you learn any new skills or tricks?
	I learned that I can call about 50 methods in a row and as long as they are all viable to call on the data type and in the correct sequence its all good
How confident are you with each of the learning objectives?
	I feel like I had an idea about how I wanted to solve this problem(after reading through what was necessary) and it worked.  That helps my confidence loads.
Which parts of the challenge did you enjoy?
	Manipulating the data as much as I wanted.
Which parts of the challenge did you find tedious?
	none.

I saved a document of my irb for the night.  It was around 4700 lines when I copied it to a text doc.  
I did almost all of my work in irb for questions 4-6.  I am really excited about progressing with this tool
and I feel like I am starting to understand that irb is awesome.  











