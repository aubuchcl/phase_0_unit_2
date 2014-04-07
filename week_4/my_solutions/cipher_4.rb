def north_korean_cipher(coded_sentence)
  input = coded_sentence.downcase.split("") 
  decoded_sentence = [] #blank array 
  alphabet = ('a'..'z').to_a
  alphabet_cipher = Hash[alphabet.zip(alphabet.rotate(-4))]
  alt_cipher =  {"@" => " ", "#" => " ", "$" => " ", "%" => " ", "^" => " ", "&" => " ", "*" => " "}
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