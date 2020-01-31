#Runaway Loop

loop do 
    puts 'just keep printing...' 
    break
end 
#break is a fast and easy way to stop loops. It also doesnt require any conditions!

#Loopception
loop do
    puts 'this is the outer loop.' 

    loop do 
        puts 'this is the inner loop.' 
        break 
    end 
    break
end 

puts 'this is outside all loops' 
#With nested loops it is important to put a break for each loop to avoid infiniteloops

#Control the loop 
iterations = 1

while iterations < 6
  puts "Number of iterations = #{iterations}"
  iterations += 1
end 
#while loops are simple and effective way to program loops with conditions like this!

#Loop on command

loop do 
    puts 'Should I stop Looping?' 
    answer = gets.chomp 
        if answer == 'yes' 
            break 
        else
            puts 'Here we go again.'
    end 
end 

#If else statements are also good ways to add conditions to loops if you are looking for 
#something a little more specific. 

#Say Hello 

say_hello = true 
hello_counter = 1

while say_hello == (hello_counter < 6)
    puts 'Hello!'
    hello_counter += 1
end 
#Booleans are based on true or false so, naturally adding a boolean to a while loop is an 
#effective way to supply a condtion. 

#Print While 

numbers = []

while numbers.size < 5
   numbers << rand(0..99)
end 

puts numbers
#I did not know about the command rand but this is why Google is an excelent resource!

#count up 
count = 1

until count > 10
    puts count 
    count += 1
end 

#Print until
numbers = [7, 9, 13, 25, 18] 
counter = 0

until counter == numbers.size 
    puts numbers[counter]  
    counter += 1
end 

#That's Odd

for i in 1..100 
    puts i if i.odd? 
end 
#To check for odd numbers just add the .odd? method

#Greet your Friends 
friends = ['Nick', 'Hanna', 'Sawyer', 'Eli'] 
count = 0 

until count == friends.size 
    puts "Hello, #{friends(count)}!"
    count += 1
end 
#Must use a for loop for this exercise
friends = ['Nick', 'Hanna', 'Sawyer', 'Eli'] 

for friend in friends 
    puts "Hello, #{friend}!"
end 
#The for loop is useful for looping things with elements 
