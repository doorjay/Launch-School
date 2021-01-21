# Easy 8 

# Sum of sums 

=begin 
  write a method that takes an array of numbers and then returns the sum of the sums of 
  each leading subsequence for that Array. You may assume that the Array always contains 
  at least on number. 
=end 

def sum_of_sums(array)
  total = 0 
  sum_of_sums = 0 

  array.each do |num| 
    sum_of_sums += num 
    total += sum_of_sums 
  end 

  total 
end 
# this one gets a lot easier if you seperate the sum total and what adds everything together. 

# Madlibs 

=begin 
  Mad libs are a simple game where you create a story template with blanks for words. You, or
  another player, then constructs a list of words and placce them into the story, creating
  an often silly or funny story as a result. 
=end 

print 'Please give me a noun' 
noun = gets.chomp 

print 'Next give me a verb' 
verb = gets.chomp 

print 'Now give me an adjective' 
adjective = gets.chomp 

print 'Lastly, give me an adverb' 
adverb = gets.chomp 

puts "I had no idea that you like to #{verb} with #{noun}! They are so #{adjective} at #{verb}ing #{adverb}!" 
# I very much enjoyed this one 

# Leading substrings 

=begin 
  Write a method that returns a list of all substrings of a string that start at the
  beginning of the original string. The return value should be arranged in order from 
  shortest to longest substring.
=end 

def leading_substring(string) 
  list_of_subs = []
  substrings = '' 

  string.split("").each do |str| 
    substrings += str 
    list_of_subs << substrings 
  end 
  list_of_subs
end 

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
#This was the given solution

# All substrings

=begin
  Write a method that returns a list of all substrings of a string. The returned list 
  should be ordered by where in the string the substring begins. This means that all 
  substrings that start at position 0 should come first, then all substrings that start at
  position 1, and so on. Since multiple substrings will occur at each position, the 
  substrings at a given position should be returned in order from shortest to longest.
=end 

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end

  results
end 
#make sure to use the previous solution to make this one else it is very hard 

# Palindromic Substrings 

=begin 
  Write a method that returns a list of all substrings of a string that are palindromic.
  That is, each substring must consist of the same sequence of characters forwards as it 
  does backwards. The return value should be arranged in the same sequence as the 
  substrings appear in the string. Duplicate palindromes should be included multiple times.
=end 

def palindrome?(string) 
  string == string.reverse && string.size > 1 
end 

def palindromes(string) 
  total_subs = substrings(string) 
  results = [] 
  
  total_subs.each do |substring| 
    results << substring if plalindrome?(substring) 
  end 

  results 
end 

# Fizzbuzz 

=begin
  Write a method that takes two arguments: the first is the starting number, and the second
  is the ending number. Print out all numbers between the two numbers, except if a number
  is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally
  if a number is divisible ny 3 and 5, print "FizzBuzz". 
=end 

def fizzbuzz(num1, num2) 
  numbers = [] 
  num1.upto(num2) do |num| 
    if num % 3 == 0 && num % 5 == 0 
      numbers << "FizzBuzz" 
    elsif num % 3 == 0
      numbers << "Fizz" 
    elsif num % 5 == 0 
      numbers << "Buzz" 
    else 
      numbers << num.to_s 
    end 
  end 
  puts numbers.join(',')  
end 

# Double Char Part 1 

# Write a method that takes a string , and returns a new string in wich every character is doubled. 

def repeater(string) 
  result = "" 
  string.each_char do |char| 
    result << char << char 
  end 
  result 
end 

# DOuble char pt 2 

=begin 
  Write a method that takes a string, and returns a new string in which every consonant 
  character is doubled. Vowels (a, e, i, o, u), digits, punctuation, and whitespace should
  not be doubled. 
=end 
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string) 
  result = '' 
  string.each_char do |char| 
    if char.include?(CONSONANTS) 
      result << char << char 
    else 
      result << char 
    end 
  result 
end 

# Reverse Digits In a Number 

# Write a method that takes a positive integer as an argument and returns that number with 
# its digits reversed 

def reversed_number(num) 
  string = num.to_s 
  string.reverse! 
  string.to_i 
end 

# Get the middle character 

=begin 
  Write a method that takes a non-empty string argument, and returns the middle character
  or characters of the argument. If the argument has an odd length, you should return exactly
  one character. If the argument has an even length, you should return exactly two characters 
=end 

def center_of(string)
  char = ''
  index = 0
  if string.size.is_even? 
    index = string.size / 2
    char = string[index] 
  else 
    index = (string.size - 1, 2)/2
    char = string[index] 
  end 
end 

