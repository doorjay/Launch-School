#unpredictable weather pt 1

sun = ['visible', 'hidden'].sample 

if sun == 'visible'
  puts "The sun is so bright!" 
else 
  puts "I can't see!"
end 
#Just a simple if/else no need to make it complicated

#Unpredicatable weather pt 2

sun = ['visible', 'hidden'].sample 

unless sun == 'visible'
  puts "the clouds are blocking the sun!"
end 
#again just keep it simple 

#Unpredictable weather pt 3

sun = ['visible', 'hidden'] 

puts "the sun is so bright" if sun == 'visible' 
puts "I can't see anything!" unless sun == 'visible'
#I like writing ti like this because its like a sentence so it reads very easily

#True or false

boolean = [true, false].sample 

boolean? puts('Im true') : puts('Im false!') 

#Truthy Number

number = 7 

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number." 
end 
#it will print out my favorite number is 7 because everything is always true until proven otherwise
#except fro "false" and "nil". 

#Spotlight pt 1

stoplight = ['green', 'yellow', 'red'].sample 

case stoplight 
when 'green'
  puts "go!"
when 'yellow' 
  puts 'Slow down!'
else 'red'
  puts "Stop!" 
end 
#remember the syntax for case is when when when...else end 

stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else 
  puts 'Stop!'
end
#same thing but if/elsif/else 

#Sleep alert

status = ['awake', 'tired'].sample 

alert = if status == 'awake'
          puts 'Be productive!'
        else 
          puts 'Go to sleep!'
        end 

puts alert 
#it make it easier to read if the block all lines up together

#Cool Numbers

number = rand(10) 

if number == 5 
  puts '5 is a cool number!'
else 
  puts 'Thats okay i didnt want 5 anyway.'
end 

puts number 
=begin
The problem before was that it was evaluating whether or not numbe was true and since 5
is true it was always taking the first parameter. It was just a matter of checking the value 
of number rather than whether or not it was false. 
=end 

#Stop Light pt 3

stoplight = ['green', 'yellow', 'red'].sample
#Reformat to make it inly take 5 lines
case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

#My solution 
case stoplight 
when 'green'   puts "Go!"
when 'yellow'  puts "Slow down!" 
else           puts "STOP!"
end 
#Woohoo i got it
