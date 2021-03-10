# Longest Scentence 

=begin 
  Write a program that reads the content of a text file and then prints the longest sentence
  in the file based on number of words. Sentences may end with periods (.), exclamation 
  points (!), or question marks (?). Any sequence of characters that are not spaces or 
  sentence-ending characters should be treated as a word. You should also print the number of
  words in the longest sentence.
=end 

text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words" 

# This one was very tricky for me but I understand how the solution works

# Now I know my ABCs 

=begin 
  A colection of spelling blocks has two letters per block. This limits the words you can 
  spell with the blocks to just those words that do not use both letters from any given block
  Each block can only be used once.
=end 

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze 

def block_word?(string) 
  upcase_str = string.upcase 
  BLOCKS.each do |block| 
    return false if upcase_str.include?(block.first) && upcase_str.include?(block.last) 
  end 
  return true 
end 

# Lettercase Percentage Ratio 

=begin 
  In the easy exercises, we worled ona problem where we had to count the number of uppercase 
  and lowercase characters, as well as characters that were neither of those two. Now we want
  to go one step further. 

  Write a method that takes a string, and then returns a hash that contains 3 entries: one 
  represents the percentage of characters in the string that are lowercase letters, one the 
  percentage of characters that are uppercase letters, and one the percentage of characters 
  that are neither. 

  you may assume that the string will contain at least one character. 
=end 

def letter_percentages(string) 
  string_size = string.size.to_f 

  percentages = { lowercase: 0, uppercase: 0, neither: 0 } 
  percentages[lowercase:] = (string.count('a-z') / string_size) * 100
  percentages[uppercase:] = (string.count('A-Z') / string_size) * 100
  percentages[lowercase:] = (string.count('\a-zA-Z') / string_size) * 100
  percentages
end 

# Matching Parentheses? 

=begin 
  Write a method that takes a string as an argumetn, and returns true if all parentheses in
  the string are properly balanced, false otherwise. To ne properly balanced, parantheses must
  occur in matching '(' and ')' pairs. 
=end 

def balanced?(string)
  parentheses = 0
  string.each_char do |char|
    parentheses += 1 if char == '('
    parentheses -= 1 if char == ')'
    break if parentheses < 0
  end

  parentheses.zero?
end

# Triangle Sides 

=begin
  To be a valid triangle, the sum of the lengths of the two shortest sides must be greater
  than the length of the longest side, and all sides must have lengths greater than 0: if 
  either of these conditions is not satisfied, the triangle is invalid.

  Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns
  a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle
  is equilateral, isosceles, scalene, or invalid.
=end 

def triangle(side1, side2, side3) 
  sides = [side1, side2, side3] 
  sides.sort! 
  largest_side = sides[2] 

  case 
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid 
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end
# I had a very simillar solution to the given one but I adjusted my invalid case to match theirs 

# Tri-Angles 

=begin
  To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles 
  must be greater than 0: if either of these conditions is not satisfied, the triangle is 
  invalid.

  Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol 
  :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, 
  obtuse, or invalid triangle.

  You may assume integer valued angles so you don't have to worry about floating point errors. 
  You may also assume that the arguments are specified in degrees.
=end 

def triangle(angle1, angle2, angle3) 
  angles = [angle1, angle2, angle3] 
  return :invalid if angles.min <= 0 || angles.sum != 180 

  case 
  when angles.include?(90) 
    :right 
  when angles.all? { |ang| ang < 90 } 
    :acute 
  else 
    :obtuse 
  end 
end 

# Unlucky days 

=begin
  Write a methdo that returns the number of Friday the 13ths in the year given by an arguemnt. 
  You may assume the year is greater than 1752 (when the UK adopted the modern greg calender) 
  and that it will remain for the forseable future. 
=end 

require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end 

# Next Featured Number Higher than a Given Value 

=begin
  a featured number (something unique to this exercise) is an odd number that is a multiple 
  of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, 
  but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the 
  digit 3 appears twice). 

  write a method that takes a single integer as an argument, and returns the next featured
  number that is greater than the argument. Return an error message if there is not next 
  featured number. 
=end 

def featured(number) 
  number += 1 
  number += 1 until num.odd? && number % 7 == 0 

  while number < 9876543210 
    return number if number.digits.uniq.size == number.digits.size 
    number += 14 
  end 
  puts "=> there is no possible number that fulfills those requirements" 
end 

# Bubble Sort 

=begin 
  Bubble Sort is one of the simplest sorting algorithms available. It isn't an effeicient algorithm, 
  but it's a great exercise for strudnet developers. In this exercise, you will write a method 
  that does a bubble sort of an Array. 

  A bubble sort works by making multiple passes (iterations) through the Array. On each pass, 
  each pair of consecutive elements is compared. If the first of the two elements si greater
  than the second, then the two elements are swapped. This process is repeated until a complete 
  pass is made without performing any swaps; at that point, the Array is completely sorted. 
=end 

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end
# This one was very tough 

# Sum Square - Square Sum 

def sum_square_difference(num) 
  sum = 0 
  sum_squared = 0

  1.upto(num) do |value| 
    sum += value 
    sum_squared += value ** 2 
  end 

  (sum ** 2) - sum_squared 
end 