# Cute Angles

=begin 
  Write a method that takes a floating point number that represents an angle between 0 and 360
  degrees and returns a String that represents that angle in degrees, minutes and seconds.
  You should use a degree symbol to represent degrees, and a single quote to represent minutes
  and a double quote to represent seconds. A degree has 60 minutes, while a minute has 60 seconds
=end 

DEGREE = "\xC2\xB0" 
MINUTES_PER_DEGREE = 60 
SECONDS_PER_MINUTE = 60 
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_DEGREE 

def dms(degrees_float) 
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round 
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_MINUTE) 
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE) 
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds) 
end 

#this one ^^^ was very difficult for me and I still don't fully understand it 

# Delete vowels 

# Write a method that takes an array of strings, and returns an array of the same string values
# except woth the vowels (a, e, i, o, u) removed. 

def remove_vowels(string) 
  strings.map { |string| string.delete('AaEeIiOoUu') }
end 

# Fibonacci Number Location By Length 

=begin 
  The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the 
  first 2 numbers are 1 by definition, and each subsequent number is the sum of the two 
  previous numbers. This series appears throughout the natural world. Computationally, the
  Fibonacci series is a very simple series, but the results grow at an incredibly rapid
  rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's 
  enormous, especially considering that it takes 6 iterations before it generates the first
  2 digit number. Write a method that calculates and returns the index of the first 
  Fibonacci number that has the number of digits specified as an argument.
=end 

def find_fibonacci_index_by_length(digits) 
  first = 1
  second = 1                               #starting numbers
  index = 2                                #number of iteratinos through after starting numbers 

    loop do 
      index += 1 
      fibonacci_number = first + second 
      break if fibonacci_number.to_s.size >= digits 

      first = second                                    #simple way of recreating fibonacci sequence
      second = fibonacci_number 
    end 

  index 
  end 

# Reversed Arrays Part 1 

=begin 
  Write a method that takes an Array as an argument, and reverses its elements in place; that
  is, mutate the Array passed into this method. the return value should be the same Array object. 
=end 

def reverse!(array)
  left_index = 0                      #beginning of array
  right_index = -1                    #end of array

  while left_index < array.size / 2                  #makes sure that we rotate around middle
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

#Reversed arrays part 2 

# Write a method that takes an array, and returns a new array with the elements of the original
# list in reverse order. DO not modify the original list. 

def reverse(arr) 
  arr.sort do |a, b| 
    arr.index(b) <=> arr,index(a)     # the ole switcharoo 
  end 
end 

# Combining arrays

def merge(arr1, arr2) 
  array = [] 
  array << arr1 
  array << arr2 
  array.flattten.uniq
end 

# Halvsies 

=begin 
  Write a method that takes an Array as an argument, and returns two Arrays(as a pair of nested
  arrays) that contain the first half and second half of the original Array, respectively.
  If the original array contains an odd number of elements, the middle element should be 
  placed in the first half of the array. 
=end 

def halvsies(array) 
  middle = (array.size / 2).ciel 
  first_half = array.slice(0, middle) 
  second_half = array.slice(middle, array.size -middle) 
  [first_half, second_half] 
end 

# Find the duplicate 

# Given an unordered array and the information that exactly one value in the array occurs twice
# (everyother value occurs once) how would you determine which value occurs twice?

def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end 

# Does my list include this? 

=begin 
  write a method named include? that takes an array and a search value as arguments. This 
  should return true if the search value os in the array, false if it is not. you may not 
  use the include method in your solution. 
=end 

def include?(array, value) 
  array.each do |element|           #iterates over all values in array
    if value == element             #returns true if it finds one equal to the value given
      true 
    else 
      false 
    end 
  end 
end 
    
# Right Triangles

=begin
  Write a method that takes a positive integer, n, as an argument, and displays a right trinagle
  whose sides each have n stars. The hypotenuse of the right triangle should have one end at the 
  lower left of the triangle and the other end that the upper right. 
=end 

def triangle(n) 
  spaces = n - 1 
  stars = 1 

  n.times do |num| 
    puts (' ' * spaces) + ('*' * stars) 
    spaces -= 1 
    stars += 1 
  end 
end 