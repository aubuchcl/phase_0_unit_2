# U2.W4: Refactor Cipher Solution


# I worked on this challenge [myself].


# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it.

def translate_to_cipher(sentence) #def method 
    alphabet = ('a'..'z').to_a #create array of alphabet
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]#creates a hash w/4letter rotation
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # array of potential encoded space chars
    
    original_sentence = sentence.downcase #new var and set to downcase param
    encoded_sentence = [] #new array
    original_sentence.each_char do |element| #iterating through sentence.downcase by char
      if cipher.include?(element) #check to see if the element matches any of the hash keys
        encoded_sentence << cipher[element] # passes new array the hash value by calling the key
      elsif element == ' ' #checks for a space in sentence
        encoded_sentence << spaces.sample #sends in a random char from spaces array
      else
        encoded_sentence << element #if nothing else then just pass the encoded message the char
      end
     end
    
    return encoded_sentence.join #return encoded sentence array as one value
end


# Questions:
# 1. What is the .to_a method doing?
    # creating an array 
# 2. How does the rotate method work? What does it work on?
  # takes a value and increments the value by set value on what it is passes.  Can only be called on arrays as far as i could find
# 3. What is `each_char` doing? telling the string to iterate by each character 
# 4. What does `sample` do? passes a random element from the array
# 5. Are there any other methods you want to understand better? zip
# 6. Does this code look better or worse than your refactored solution 
# of the original cipher code? What's better? What's worse?
  # seems to be cleaner because of the algo that makes the hash(this is what is better)
  # I like my solution because it has all of the values (spaces) in the hash
# 7. Is this good code? What makes it good? What makes it bad?
  #I think it is good code.  It is good because it seems to efficiently complete its
  # intended funciton and is easy to read.  I dont really see anything that would make it "bad"



# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

    # What parts of your strategy worked? What problems did you face?
      #my strat was to go line by line and work through following all directions
      #didnt face any real problems on this
    # What questions did you have while coding? What resources did you find to help you answer them?
      #the questions I had were what was the code doing when .zip,.sample,.rotate were called.
      # I used IRB to figure them out alongside ruby docs
    # What concepts are you having trouble with, or did you just figure something out? If so, what?
      # the concepts I am having trouble with are trying to pick what the best option
      # is from the plethora of options out there
    # Did you learn any new skills or tricks?
      # creating a hash from an array with .zip,.map was cool
    # How confident are you with each of the learning objectives?
      # fairly
    # Which parts of the challenge did you enjoy?
      # having code to learn from is really nice.  I love when there is code
      # where I find what it does.  It really helps me learn the concepts
    # Which parts of the challenge did you find tedious?
      # This is a clean assignment.  Nothing really redundant to me.














