# Easy 5 

# ASCII String Value 

# Write a method that determines the ASCII string value of a string that is passed in as
# an argument. The ASCII string value is the suum of the ASCII values of every character 
# in the string.(You may use String#ord to determine the ASCII value of a character.) 

def ascii_value(string) 
  sum_of_values = 0 
  
  string.each_char do |char| 
    sum_of_values += char.ord 
  end 
  sum_of_values 
end 

# After Midnight Part 1 

=begin
The time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. If the number of minutes
is negative, the time is before midnight. Write a method that takes a time using this minute
based format and returns the time of day in 24 format (hh:mm). Your method should work with an 
integer input. 

You may not use Ruby's date and time classes. 
=end 
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_DAY 

def time_of_day(minutes_value) 
  minutes_value = minutes_value % MINUTES_PER_DAY 
  hours, minutes = minutes_value.divmod(MINUTES_PER_HOUR) 
  format('%02d:%02d', hours, minutes)
end 

# After Midnight Part 2

=begin
  As seen in the previous excerise, the time of day cna be represented
  as the number of minutes before or after midnight. Write two methods that each 
  take a time of day in a 24 hour format, and return the number of minutes before 
  and after midnight, respectively. 

  You may not use ruby's Date and Time methods. 
=end

MINUTES_PER_HOUR = 60 
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * MINUTES_PER_DAY 

def aftermidnight(time) 
  hours, minutes = time.split(':').map { |time_split| time_split.to_i } 
  ((hours * MINUTES_PER_HOUR) + minutes) % MINUTES_PER_DAY 
end 

def before_midnight(time) 
  minutes_till_midnt = MINUTES_PER_DAY - after_midnight(time) 
  minutes_till_midnt = 0 if minutes_till_midnt == MINUTES_PER_DAY 
  minutes_till_midnt
end 

# Letter Swap 

=begin 
  Given a string of words seperated by spaces, write a method that takes this string of 
  words an returnss a string in which the first and last letters of every word are swapped. 

  You may assume that every word contains at least one letter, and that the string will 
  always contain at least on word. You may also assume that each string contains nothing but 
  words and spaces. 
=end 

def swap(string) 
  reversed = string.split(" ").map do |word| 
    word[0], word[-1] = word[-1], word[0] 
    word 
  end 
  reversed.join(" ")
end 

#not sure if that works properly ^^^ 

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end
 
#this is the given answer. 

# Clean up the words

=begin
  Given a string that consists of some words(all lowercase) and an assortment of 
  non-alphabetic characters, write a method that returns that string with all of the 
  non-alphabetic characters replaced by spaces. if one ot more non-alphabetic characters
  occur in a riw, you should only have one space in the result (the reuslt should never 
  have consecutive spaces). 
=end

LETTERS = ('a'..'z').to_a 

def cleanup(string) 
  scrubbed_letters = [] 

  string.chars.each do |chars| 
    if LETTERS.include?(chars) 
       scrubbed_letters << chars 
    else 
      scrubbed_letters << " " unless scrubbed_letters.last == " " #only one space at a time
    end 
  end 
  
  scrubbed_letters.join 
end 

# Letter Counter Part 1 

# Write a method that takes a string with one or more space separated words and returns a
# hash that shoes the number of words of different sizes. 

def word_sizes(string) 
  word_count = Hash.new(0)                  # makes a new hash
  string.split.each do |word|               # splits up the words and determines their letter count
    word_count[word.size] += 1              # increases value to the according key
  end 
  word_count                                # returns hash
end 

# Letter counter part 2 

# Modify the word_sizes method from the previous exercise to exclude non-letters when 
# determining word size. For instance, the length of it's is 3 not 4 

def word_sizes(string) 
  word_count - Hash.new(0) 
  string.split.each do |word| 
    scrubbed_word = word.delete("^A-Za-z")        # delete method deletes everything other than the letters given and returns what's left
    word_count[scrubbed_word.size] += 1 
  end 
  word_count  
end 

# Alphabetical Numbers 

=begin 
  Write a method that takes an Array of Integers between 0 and 19, and returns an Array of 
  those Integers based on the English words for each number: 

  zero one two three four five six seven eight nine ten eleven and so on
=end 

NUMBERS_AS_WORDS = %w(zero one two three four
                      five six seven eight nine
                      ten eleven twelve thirteen fourteen
                      fifteen sixteen seventeen eighteen nineteen) 

def alphabetical_number_sort(numbers) 
  numbers.sort_by { |number| NUMBERS_AS_WORDS[number]}
end 

# ddaaiilly dddoouubbllee 

=begin 
  Write a method that takes a string argument and returns a new string that contains the
  value of the original string with all consecutive duplicate characters collapsed into a
  single character. You may not use String#squeeze or String#squeeze!.
=end 

def crunch(string) 
  index = 0 
  crunch_text = '' 
  while index <= string.length - 1 
    crunch_text << string[index] unless string[index] == string[index + 1] 
    index += 1 
  end 
  crunch_text 
end 

# Bannerizer 

# Write a method that will take a short line of text and print it within a box 

def print_in_box(string) 
  lines_across = "+#{'-' * (string.size + 2)}+"       #Drawing lines across
  space = "|#{' ' * (string.size + 2)}|"              #Spaces between message and lines across

  puts lines_across                                   #+-------------+
  puts space                                          #|             |
  puts "| #{string} |"                                #| The message |
  puts space                                          #|             |
  puts lines_across                                   #+-------------+
end 

# Spin Me Around In Circles 

=begin 
  You are given a method named spin_me that takes a string as an argument and returns a
  string that contains the same words, but with each word's characters reversed. Given the 
  method's implementation, will the returned string be the same object as the one passed in 
  as an argument or a different object? 
=end 

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# I think that it will be a different object because the split method changes it to an array