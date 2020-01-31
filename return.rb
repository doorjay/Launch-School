#Breakfast, lunch, or dinner? 

def meal 
  return 'Breakfast' 
end 

puts meal 
#This will return Breakfast beccause the method calls on return to return breakfast

#Breakfast lunch or dinner pt 2

def meal 
  'Evening'
end 

puts meal 
#This will print Evening because that is the only thing in the meal method making it the value of meal.

#Breakfast, lunch, or dinner pt 3 

def meal 
  return 'Breakfast' 
  'Dinner' 
end 

puts meal 
#This should return Breakfast because the method is told to return Breakfast and it will exit out of the 
#method the moment that is done ignoring anything after which in this case is dinner.

#Breakfast, lunch, or dinner pt 4 

def meal 
  puts 'Dinner' 
  return 'Breakfast'
end 

puts meal 
#This will print both Dinner AND Breakfast because the puts command comes before return which allows it to 
#be read this time, afterwards Breakfast i scalled on by return and then immediatly exits the method

#Breakfast, lunch, or dinner pt 5

def meal 
 'Dinner'
  puts 'Dinner' 
end 

p meal
#It prints out Dinner and nil. Nil is also printed out because it is the return value of meal/puts

#Breakfast, lunch, or dinner pt 6

def meal 
  return 'Breakfast' 
  'Dinner' 
  puts 'Dinner'
end 

puts meal 
#If i have learned anything it is that Breakfast is the only to be printed out because after the return 
#value is read it immediatly exits the method despite anything els ecoming after return. 

#Counting sheep pt 1

def count_sheep
  5.times do |sheep| 
    puts sheep 
  end 
end 

puts count_sheep 
#Since there isn't a value given for sheep it will just count up to 4. Well actually i was wrong it vounts to 5 
#beacuse the times method returns the intial integer being 5. 

#Couting sheep pt 2

def count_sheep 
  5.times do |sheep| 
    puts sheep 
  end 
  10 
end 

puts count_sheep 
#So if ive learned from the last problem, this should print out 1-4 and then 10 because that is the last integer 
#in the method. 

#Counting sheep pt 3

def count_sheep 
  5.times do |sheep| 
    puts sheep 
    if sheep >= 2
      return
    end 
  end 
end 

p count_sheep 
#alright so this time it will only count up to 2 then it will also print nil because that is the return value
#of puts and we see the return value due to the use of p when calling the count_sheep method. 

#Tricky number

def tricky_number
  if true 
    number = 1
  else 
    2 
  end 
end 

puts tricky_number 
#Well it will always print out 1 because the if/else statement has no reason to ever chose the else clause. There
#is nothing in the method that has the ability to change the method value to false. 
