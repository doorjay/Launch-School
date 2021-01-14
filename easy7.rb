# Easy 7 

# Combine Two Lists 

=begin 
  Write a method that combines two Arrays passed in as arguments, and returns a new Array 
  that contains all elements from both Array arguments, with the elements taken in alteration
=end 

def interleave(arr1, arr2) 
  new_array = [] 
  while arr2.length > 0
    new_array << arr1.shift 
    new_array << arr2.shift 
  end 
  new_array 
end 

# Lettercase Counter 

=begin 
  Write a method that takes a string, and then returns a hash that contains 3 entires: one 
  represtsnts the number of characrters in the string that are lowercase letter, one the 
  the number of characters that are uppercase letters and one the number of characters that
  are neither. 
=end 

UPPERCASE = ('A'..'Z').to_a 
LOWERCASE = ('a'..'z').to_a 

def letter_case_count(string) 
  count = { lowercase: 0, uppercase: 0, neither: 0 } 

  string.chars.each do |char| 
    if UPPERCASE.include?(char) 
      counts[:uppercase] += 1 
    elsif LOWERCASE.include?(char) 
      counts[:lowercase] += 1 
    else 
      counts[:neither] += 1 
    end 
  end 
  count 
end 
# learned a lot with this one ^^^ 

# Capitalize Words 

=begin 
  Write a method that takes a single String argument and returns a new string that contains
  the original value of the argument with the first character of every word capitalized 
  and all other letters lowercase.
=end 

def word_cap(words)
  words_array = words.split.map do |word|
    word.capitalize
  end
  words_array.join(' ')
end

# Swap Case 

=begin 
  Write a method that takes a string as an argument and returns a new string in which every
  uppercase letter is replaced by its lowercase version, and every lowercase letter by its
  uppercase version. All other characters should be unchanged.
=end 

def swapcase(str) 
  str.chars.map do |char| 
    if ('a'..'z').include?(char) 
      char.upcase 
    elsif ('A'..'Z').include?(char) 
      char.downcase
    else 
      char 
    end 
  end.join 
end 

# Staggered Caps Part 1

=begin 
  Write a method that takes a String as an argument, and returns a new String that contains
  the original value using a staggered capitalization scheme in which every other character
  is capatalized, and the remaining characters are lowercase. Characters that are not letters
  should not be changed, but count as characters when switching between upper and lowercase. 
=end 

staggered_case(string) 
  stag_string = string.chars.map.each_with_index do |letter, index| 
                  if index.is_even? 
                    letter.upcase 
                  else 
                    letter.downcase 
                  end 
  end 
  stag_string
end 

# Staggered Caps Part 2 

=begin 
  Modify the method from the previous exercise so it ignores non-alphabetic characters when
  determining whether it should uppercase or lowercase each letter. The non-alphabetic 
  characters should still be included in the return value; they just don't count when toggling
  the desired case.
=end 

AFFECTED_CHARS = ('a'..'z', 'A'..'Z') 

def staggered_case2(string) 
  letter_count = 0 
  stag_string = '' 

  string.chars.map do |char| 
    if char.include?(AFFECTED_CHARS) 
      if letter_count.is_even? 
        char.upcase
      else 
        char.downcase 
      end 
      letter_count += 1
    end 
    stag_string 
end 

# Multiplicative Average 

=begin 
  Write a method that takes an Array of integers as input, multiplies all the numbers
  together, divides the result by the number of entries in the Array, and then prints the
  result rounded to 3 decimal places. Assume the array is non-empty.
=end 

def show_multipicative(array) 
  product = 1.to_f 

  array.each do |num| 
    product *= num 
  end 
  average = product / array.size 
  puts "The result is #{format('%.3f', average)}." 
end 

# Multiply Lists 

=begin 
  Write a method that takes two Array arguments in which each Array contains a list of
  numbers, and returns a new Array that contains the product of each pair of numbers from 
  the arguments that have the same index. You may assume that the arguments contain the
  same number of elements.
=end 

def multiply_list(list1, list2) 
  new_list = [] 
  list1.each_with_index do |num, index| 
    new_list << num * list2[index]        #multiply each value from list1 by each value of list2
  end 
  new_list 
end 

# Multiply All Pairs 

=begin 
  Write a method that takes two Array arguments in which each Array contains a list of 
  numbers, and returns a new Array that contains the product of every pair of numbers that
   can be formed between the elements of the two Arrays. The results should be sorted by
  increasing value.
=end 

def multiply_all_pairs(arr1, arr2) 
  product = [] 
  arr1.each_with_index do |values, index| 
    product << values * arr2[index] 
  end 
  product.sort 
end 

# The end is near but not here 

# Write a method that returns the next to last word in the String passed to it as an argument
# Words are any sequence of non blank characters. Assume all input will have two or more words 

def penultimate(string) 
  second_last = string.split.size - 1 
  puts "#{string[second_last]}"
end  