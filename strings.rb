#Create a string 

empty_string = "" 
#You can also do = String.new

#Quote Confusion

puts 'It\'s now 12 o\'clock.'
#make it using double quotes instead

puts "It's now 12 o'clock." 

#Ignoring case

name = 'Roger' 

puts name.casecmp('roGeR') == 0 
puts name.casecmp('DAVE') == 0 
#the method casecmp compares the value of two strings case-insetively

#Dynamic String

name = 'Elizebeth' 

puts "hello, #{name}!" 

#Combining names

first_name = 'John' 
last_name = 'Dope' 

full_name = first_name + ' ' + last_name 
puts full_name 

#Tricky Formatting

state = 'tExAs' 
puts state.capitalize!
#Boom grammer

#Goodbye, not hello

greeting = 'Hello'

greeting.gsub!('Hello, Goodbye')
puts greeting
#the gsub method allows you to replace specific characters with new ones

#Print the 

alphabet = 'abcdefghijklmnopqrstuvwxyz' 
puts alphabet.split('') 
#Split is really handy when trying to seperate things

#Pluralize 

words = 'car human elephant airplane' 
words.split(' ').each do |word|
	puts word + 's'
end 
#again split is really handy for seperating the different elements in strings

#Are you there? 

colors = 'blue pink yellow orange'

puts colors.include?('yellow') 
puts colors.include?('purple') 
#For this one you don't really need ot split anything. 
