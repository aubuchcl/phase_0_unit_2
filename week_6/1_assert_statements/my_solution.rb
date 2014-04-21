# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# The code will raise an error if the test does not pass.
# ex:  if name != bettysue in ex 1 then "Assertion failed!" will be raised



# 3. Copy your selected challenge here
class CreditCard
  def initialize(number)
    @arr_num = number.to_s.split(//)
    @doubled_value = double
    @number = number
    raise ArgumentError.new("That is not a vaild number") if @number.to_s.length != 16
  end

  def double
    cal = []
    @arr_num.each_with_index do |value, index|
      if index.even?
        value_doubled = value.to_i * 2
        value_doubled.to_s.split(//).each { |val| cal << val.to_i }
      else
        cal << value.to_i
      end
    end
    @doubled_value = cal.inject(:+)
  end
    
  def check_card
    return true if @doubled_value % 10 == 0
    false
  end
end



# 4. Convert your driver test code from that challenge into Assert Statements

def assert 
  raise "Assertion Failed!" unless yield
end

assert {test = CreditCard.new(4563960122001999)
        test.check_card == true}

assert { new_card = CreditCard.new(4408041234567892)
         new_card.check_card == false} 

assert { good_card = CreditCard.new(4408041234567893)
         good_card.check_card == true}



# 5. Reflection



    What parts of your strategy worked? What problems did you face?
    	didnt face any problems on this exercise
    What questions did you have while coding? What resources did you find to help you answer them?
    	not really any questions. 
    What concepts are you having trouble with, or did you just figure something out? If so, what?
    	none here
    Did you learn any new skills or tricks?
    	Yes I learned that if the test passes it doesnt print anything
    How confident are you with each of the Learning Competencies?
    	Confident
    Which parts of the challenge did you enjoy?
    	Easy for once
    Which parts of the challenge did you find tedious?
    	none


