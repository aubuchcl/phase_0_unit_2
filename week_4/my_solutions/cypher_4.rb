# U2.W4: Cipher Challenge


# I worked on this challenge [with Hunter Chapman]

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_sentence)
  input = coded_sentence.downcase.split("")
  decoded_sentence = [] #blank array
  alphabet = ('a'..'z').to_a
  alphabet_cipher = Hash[alphabet.zip(alphabet.rotate(-4))]
  alt_cipher = {"@" => " ", "#" => " ", "$" => " ", "%" => " ", "^" => " ", "&" => " ", "*" => " "}
  cipher = alphabet_cipher.merge(alt_cipher)
            
  input.each do |x|
    found_match = false
    
    cipher.each_key do |y|
      if x == y
        decoded_sentence << cipher[y]
        found_match = true
      end
    end

    if !found_match
      decoded_sentence << x
    end
  end

  decoded_sentence = decoded_sentence.join("").capitalize
  decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
  decoded_sentence

end






# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "I want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")
