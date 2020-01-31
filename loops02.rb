#Even or odd?
count = 1
loop do 
  if count.odd?
    puts "#{count} is odd!"
  else 
    puts "#{count} is even!"
  end 

  break if count ==5 
  count += 1
end 
#make sure the first end is after the if/else statement otherwise it will 
# loop much more than you want. 

#Catch the Number

loop do 
  number = rand(100) 
  puts number 
  break if number <= 10 
end 
#You can also you .between?(x,y) but, I think this is more efficient for this.

#Conditional Loop 

process_the_loop = [true, false].sample 

loop do 
  process_the_loop = [true, false].sample 
  if process_the_loop == true 
    puts "The loop was proccessed" 
  else 
    puts "The loop wasn't processsed" 
  end 
  break if process_the_loop == true 
end 
#This works well but, could be written so more easily readable

#Get the sum

loop do 
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4 
    puts "That's correct!"
    break 
  else 
    puts "Wrong answer. Try again!"
  end 
end 

#Insert Numbers

numbers = [] 

loop do 
  puts 'enter an number:' 
  input = gets.chomp.to_i 

  numbers << input 
  break if numbers.size == 5
end 
puts numbers 

names = ['Sally', 'Joe', 'Lisa', 'Henry'] 
#YOU MUST USE loop FOR THIS EXERCISE 

loop do 
  puts names.shift
  break if names.empty? 
end  
#the .shift method removes the first element of an array and returns it value.

#Stop Counting 

5.times do |index| 
  puts index 
  break if index == 2 
end  
#Since the times method just counts until the specified number, all we have to do
#is orint the value to the screem amd break it at 2. 

#Only Even 

number = 0 

until number == 10
  number += 1 
  next if number.odd?
  puts number 
end 
#Next lets you skip to the next iteration based on given conditions. In this case the 
#condtion was if "number" was odd. 

#First to Five

number_a = 0 
number_b = 0

loop do 
  number_a += rand(2) 
  number_b += rand(2) 
  next if number_a < 5 && number_b < 5

  puts '5 was reached!'
  break 
end 
#You can use if or unless to make the condtion. I just thought of if first. 

#Greeting

def greeting 
  puts 'hello' 
  end 

number_of_greetings = 2

while number_of_greetings != 0 
  greeting 
  number_of_greetings -= 1 
end 
