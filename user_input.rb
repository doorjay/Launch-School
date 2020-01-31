#repeat after me 

puts "Type something in. It can be anything you'd like."
answer = gets
puts answer 
#gets read the user input and stores it

#Your age in months

puts "what age are you in years? Type the number below." 
age_years = gets 
age_months = 12*age_years.to_i 
puts "You are #{age_months} months old."

#Print something part 1

puts ">> Do you want me to print something? (y/n)" 
answer = gets.chomp
if answer = 'y'
  puts "something" 
end 
#make sure to use .chomp otherwise it will turn out false. 

#Print something part 2

puts ">> Would you like me to print something? (y/n)" 
answer = gets.chomp 
if answer.lowcase = 'y' 
  puts "something" 
elsif answer.lowcase = 'n'
  puts "N" 
else
  puts "Sorry that is an invalid answer. Please type 'y' or 'n'" 
end 

#SOLUTION 

choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'
=begin
Loop structure like the solution shown is very important when asking for user input.
It allows you to ask again and again in the event that the user made a misinput or
various other conundrums. Otherwise the user would get only one chance to try your 
code which makes for a poor user experience. 
=end 

# Launch School Printer pt 1

loop do
  puts ">> How many outputs do you want? Please enter a number that is 3 or lager."
    answer = gets.chomp.to_i 
  if answer >= 3
    answer.times do  
    puts "Launch School is the best!"
  break 
  else puts "Sorry that is not a large enough number, please try again."
  end
end 

#LS SOLUTION 

number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end

=begin
Im not sure if my solution is correct and im not sure how to test it to
see if it is in fact correct. TO my knowledge it should work just fine but, 
there are a lot of ways you could've solved this and what i put was the first
thing that came to mind. It's what felt natural to me.
=end 

#Passswords
PASSWORD = '123abc'

loop do 
puts ">> PLease enter your password"
  password = gets.chomp
  break if password == PASSWORD 
  puts ">> Nice guess but no."
end 

puts "Welcome!" 
#You shouldn't need to give the password a value before hand specifically for this 
#exercise and instead just have "password" have a very specific string value. 

#User Name and Password 
USERNAME = 'dorje' 
PASSWORD = 'abc123'

loop do 
  puts "Please enter user name." 
    user_name = gets.chomp 

  puts "Please enter password." 
    password = gets.chomp 

  break if user_name == USERNAME && password = PASSWORD 
  puts "WRONG!" 
end 

puts "Welcome!" 

#Dividing numbers 

def valid_number? 
  number_string.to_i.to_s == number_string 
end 

numerator = nil
loop do 
  puts ">> PLease enter the numerator." 
    numerator = gets.chomp.to_i 

  break if numertaor.valid_number? == true 
  puts 'Invalid number!' 
end 

denominator = nil 
loop do 
  puts ">> Please enter the denominator."
    denominator = get.chomp.to_i

  if denominator = 0  
      puts "Invalid number! The denominator cannot be 0!"
  
  else 
    break if denominator.valid_number? == true
  end 
  puts "Invalid number!" 
end 

puts "#{numerator}/#{denominator} is #{numerator/denominator}" 

#remember to give the answers values of nil before asking the user for input

#Launch School printer pt 2

answer = nil 
loop do
  puts ">> How many outputs do you want? Please enter a number that is 3 or larger."
    answer = gets.chomp
  break if answer.to_s.downcase == 'q'

  if answer >= 3
    answer.times do  
    puts "Launch School is the best!"

  else 
    puts "Sorry that is not a large enough number, please try again."
  end 

end 

=begin 
Because of the code I wrote previously was simplified, aslong as I put the break 
condition before the rest of the block, the user should have an easy time to get
out of the loop. 
=end 

#Opposites Attract 

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

integer1 = nil 
integer2 = nil 

loop do 
  puts ">> Please put a positive or negative integer."
    integer1 = gets.chomp 

    if integer1.valid_number? == true 
    puts ">> Please put a positive or negative integer."
      integer2 = gets.chomp 

      break if integer2.valid_number? == true && (integer1*integer2 < 0)

    else puts "sorry only non-zero integers are allowed." 
      
  end 
end 

puts "#{integer1} + #{integer2} = #{integer1 + integer2}"

#This is probably pretty messy or at least messier than it could be but, it 
#should work properly and im sure that with time the readability will improve. 
