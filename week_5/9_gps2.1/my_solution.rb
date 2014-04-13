# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 
#Shawn Siebert





# Our Refactored Solution

def bakery_num(num_of_people, fav_food) 
  
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}#of people that the food feeds
  
  pie_qty = 0 #initial values
  cake_qty = 0
  cookie_qty = 0
  
  fav_food_qty = my_list.values_at(fav_food)[0]
  
    if my_list[fav_food].nil? 
        raise ArgumentError.new("You can't make that food")
    else
        fav_food_qty   # takes the first argument of fav_food and returns the integer value to fav_food_qty
    end


  if num_of_people % fav_food_qty == 0 #if the num of people / qty has no remaider
    num_of_food = num_of_people / fav_food_qty # then the num_of_food can be found from this division
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else 
    if fav_food == "pie"
         pie_qty = num_of_people / fav_food_qty
    elsif fave_food == "cake"
         cake_qty = num_of_people / fav_food_qty
    elsif fave_food == "cookie"
        cookie_qty = fav_food_qty
    end 
    if num_of_people % my_list.values_at(fav_food)[0] > 0 
    		extra = num_of_people % my_list.values_at(fav_food)[0]
        cookie_qty += extra
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  end
end






#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 



