# U2.W4: Cipher Challenge


# I worked on this challenge [with Hunter Chapman]

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  # this assigns the value passed to coded_message to input and the value is modified to individual chars "x"
  decoded_sentence = [] #sets a new array
  cipher = {"e" => "a", # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b", # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",  #  
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z",
            "@" => " ",
            "#" => " ",
            "$" => " ",
            "%" => " ",
            "^" => " ",
            "&" => " ",
            "*" => " "}
            
  input.each do |x| # What is #each doing here?
    found_match = false # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        decoded_sentence << cipher[y]
        found_match = true
      end
    end
      if !found_match # What is this looking for?
        decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
  decoded_sentence.capitalize # What is this returning?
end






# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "I want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")