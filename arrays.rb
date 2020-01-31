#New pet

pets = ['cat', 'dog', 'fish', 'lizard'] 
my_pet = pets[2] 

puts "I have a pet #{my_pet}!"
#The wording on this question had me a little freaked out but the question itself was not complex. 

#More than one 

pets = ['cat', 'dog', 'fish', 'lizard'] 
my_pets = pets[2, 3] 

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"  

#Free the lizard 

pets = ['cat', 'dog', 'fish', 'lizard'] 
my_pets = pets[2, 3] 

my_pets.pop

puts "I have a pet #{my_pets}!" 

#One isn't enough

pets = ['cat', 'dog', 'fish', 'lizard'] 
my_pets = pets[2, 3] 
my_pets.pop 

my_pets.push(pets[1]) 

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!" 
#The push method is good for adding elements to the end of an array but, you can also use the 
#shovel method. 

#What color are you 

colors = ['red', 'yellow', 'purple', 'green'] 

colors.each do |x|
  puts "I'm the color #{x}!" 
end 

#Doubled 

numbers = [1, 2, 3, 4, 5] 
doubled_numbers = []

numbers.map do |n| 
  doubled_numbers << n*2
end 

p doubled_numbers 
#it is not neccessary to do it all in one blovk but I felt like it. 

#Divisible by three

numbers = [5, 9, 21, 26, 39] 

divisible_by_three = numbers.select do |n| 
                       n % 3 == 0
                     end 
p divisible_by_three 

#Favorite number pt 1

[['Dave', 7,] ['Miranda', 3,] ['Jason', 11]] 

#favorite number pt 2 

favorites = [['Dave', 7,] ['Miranda', 3,] ['Jason', 11]] 
flat_favorites = favorites.flatten 

p flat_favorites 

#Are we the same? 

array1 = [1, 5, 9] 
array2 = [1, 9, 5] 

puts array1 == array2 
#No they aren't the same. They have the same length and the same numbers however, the order matters. 
