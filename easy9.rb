# Easy 9 

# Welcome Stranger

=begin
  Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or
  more elements that, when combined with adjoining spaces, will produce a person's name. 
  The hash will contain two keys, :title and :occupation, and the appropriate values. Your
   method should return a greeting that uses the person's full name, and mentions the
  person's title and occupation.
=end 

def greetings(name, status) 
  "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around." 
end 

# Double Doubles 

=begin 
  A double number is a number with an even number of digits whose left-side digitis are 
  exactly the same as its right side digits. For example, 44, 33332, 103103, 7676 are all
  doublr numbrts. 444, 334433, and 107 are not. 

  Write a method that returns 2 times the number provided as an argument, unless the argument
  is a double number; double numbers should be returned as-is. 
=end 

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

# there is probably a way to put this into two seperate methods to make it simpler

# Always Return Negative 

=begin
  write a method that takes a number as an argument. If the argumetn is a positive number, 
  return the negative of that number. If the number is 0 or negative, return the original 
  number. 
=end 

def negative(num) 
  unless num =< 0 num * -1 
end 

# Counting Up 

# Write a method that takes an integer argument, and returns an Array of all integers, in
# in sequence, between 1 and the argument. You may assume the ineger is valid. 

def sequence(num) 
  array = [] 
  array << num 

  until num == 1 do |num| 
    array << num 
    num -= 1 
  end 
  array 
end 
# my version is way longer but i tried 
def sequence(number)
  (1..number).to_a
end

# Uppercase Check 

=begin 
  Write a method that takes a string argument, and returns true if all of the alpahabetic 
  characters inside the string are uppercase, false otherwise. Characters not alphabetic 
  should be ignored 
=end 

uppercase?(string) 
  string == string.upcase 
end 

# How long are you? 

=begin 
  Write a methof that takes a string as an argument, and returns an Array that contains every
  word from the string, to whcih you have appended a space and the word length. You may assume 
  that words int he string are seperated by exactly one space, and that any substring of 
  non-space characters is a word. 
=end 

def word_lengths(string) 
  words = string.split(' ') 

  words.map do |word| 
    word + ' ' + word.length.to_s 
  end 
end 

# Name Swapping 

=begin 
  Write a method that takes a first name, space, and a last name passed a single String 
  argument, and returns a string that contains the last name, a comma, a space, and the 
  first name. 
=end 

def swap_name(name)
  name = name.split(' ')
  name[1] + ", " + name[0]
end

# Sequence Count 

=begin 
  Create a method that takes two integers as arguments. The firsrt is a count, and the second
  is the first number of a sequence that your method will create. the method should return
  an array that contains the same number of elements as the count argument, while the values
  of eaech element will be multiples of the starting number. 

  You may assume that the count argument will always have a value of 0 or greater, while the
  starting number can be any integer value. If the count is 0 an empty list should be returned. 
=end 

def sequence(num1, num2) 
  list = [] 

  num1.times do 
    list << num2 
    num2 += num2 
  end 

  list 
end 
#my solution ^^^

def sequence(count, first)
  (1..count).map { |value| value * first }
end 

# Grade book 

# Write a method that determines the mean (average) of the three scores passed to it, and 
# returns the letter value associated with that grade. 

def get_grade(grade1, grade2, grade3) 
  average = (grade1 + grade2 + grade3) / 3 

  case average 
  when 90..100 then 'A' 
  when 80..89 then 'B' 
  when 70..79 then 'C' 
  when 60..69 then 'D' 
  else             'F' 
  end 
end 

# Grocery List 

# Write a method which takes a grocery list (array) of fruits with quantities and converts
# it into an array of the correct number of each fruit. 

def buy_fruit(list) 
  new_list = [] 

  list.each do |item| 
    new_list << (item[0] * item[1]) 
  end 
  new_list.flatten
end 