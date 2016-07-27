NUMBERS = {
   	1000 => "M",
   	900 => "CM",
   	500 => "D",
   	400 => "CD",
   	100 => "C",
   	90 => "XC",
   	50 => "L",
   	40 => "XL",
   	10 => "X",
   	9 => "IX",
   	5 => "V",
   	4 => "IV",
   	1 => "I"
}

def romanize(arabic_numeral)
  #creating an empty string to push the roman numeral into then return that value 
  roman = ""

  number = arabic_numeral
  # assigning a value for the number passed through so that we will be able to find the remainder too 

  NUMBERS.each do | key, value |
   	# running a each loop with two different parimeters, key is the number and value is what it will turn into 
   	roman << value *(number / key)

   	# were taking the number that was assigned and dividing it the closest key 
   	# then timising the number of times it passes through the value and then added the total by the key 
   	number = number % key
  end

return roman 
# return the roman string 
end