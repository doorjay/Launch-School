# EASY 4 

# Write a method that takes two strings as arguments, determines the longest of the two strings, 
# and then returns the result of concatenating the shorter string, the longer string, and the 
# shorter string once again. You may assume that the strings are of different lengths

def short_long_short(string1, string2)
  if string1.length > string2.length
      puts string2 + string1 + string2 
  else 
      puts string1 + string2 + string1 
  end 
end 

# Write a method that takes a year as input and returns the century. The return value should be a string 
# that begins with the century number, and ends with st, nd, rd, or th as the appropriate for that number. 

def century(year) 
  century = year / 100 + 1 
  century -= 1 if year % 100 == 0 
  century.to_s + century_suffix(century) 
end 

def century_suffix(century) 
  return "th" if [11, 12, 13].include?(century % 100) 
  last_digit = century % 10

case last_digit
when 1 then 'st'
when 2 then 'nd'
when 3 then 'rd'
else 'th'
end
end 

# In the modern era under the Gregorian Calendar, leap years occur in every year
# that is evenly divisble by 4, unless the year is also divisible by 100. If the 
# year is evenly divisible by 100, then it is not a leap year unless the year is 
# also divisible by 400. Write a method that returns whether it is a leap year or not. 

def leap_year?(year) 
  if (year % 4 == 0 ) && (year % 100 != 0 unless year % 400 == 0 )
      true 
  else 
      false
  end 
end 

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year.
# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years
# occur in any year that is evenly divisible by 4.

def leap_year?(year) 
  if year <= 1752 && year % 4 == 0 
      true
  elsif (year % 4 == 0 ) && (year % 100 != 0 unless year % 400 == 0 )
      true 
  else 
      false
  end 
end 

# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some
# other number, and then computes the sum of those multiples. For instance, if the supplied
# number is 20 , the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

def multiple?(number, divisor)
number % divisor == 0
end

def multisum(num) 
  sum_of_multiples = 0 
  
  1.upto(num) do |number| 
      if multiple?(number, 3) || multiple?(number, 5) 
          sum_of_multiples += number 
          
      end 
  end 
  sum_of_multiples
end 

# write a method that takes an array of numbers, and returns an Array with the same number
# of elements, and each element has the running total from the original array. 

def running_total(array) 
  sum = 0 
  
  array.map do |num|
      sum += num 
  end 
end 

# Write a method that takes a string of digits and converts them to the appropriate integer. 
# You may not use the to_i method or Integer() 

NUMBERS = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
        }

def string_to_integer(string)
  digits = string.char.map do |char| 
      NUMBERS[char] 
  end 
  
  value = 0 
  digits.each { |digit| value = 10 * value + digit } 
  value 
end 

# write a method that takes a string of numbers and converts it into the corresponding integer. 
# this time the numbers may have a sign, convert the sign as well into a positive or negative respectively. 

NUMBERS = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
        }
        
def is_negative?(string) 
  if string[0] == '-' 
      true 
  end 
end 

def string_to_integer(string)
  digits = string.char.map do |char| 
      NUMBERS[char] 
  end 
  
  value = 0 
  digits.each { |digit| value = 10 * value + digit } 
  
  if string.is_negative?
      value * -1 
  end 
end 

# Write a method that takes a positive integer or zero and converts it into a string
# You may not use to_s String(), format, etc. 



def integer_to_string(num) 
  array = [] 
  array << num 
  return array.prepend() 
end 

# Write a method that takes an integer and converts it to a string representation (positive or negative) 

def signed_integer_to_string(number)
case number <=> 0
when -1 then "-#{integer_to_string(-number)}"
when +1 then "+#{integer_to_string(number)}"
else         integer_to_string(number)
end
end 

