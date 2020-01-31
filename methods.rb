#Print me

def print_me
  puts "I'm printing with the method!"
end 
print_me  

#Print me pt 2 

def print_me 
  "I'm printing with the return value!"
end 

puts print_me 

#Greeting through methods

def greeting 
  "Hello "
end 

def place
  "World!" 
end 

puts "#{greeting} #{place}" 

#Greeting through methods pt 2 

def hello
  'Hello'
end

def world
  'World'
end

def greet 
  hello + ' ' + world 
end 

puts greet 

#Make and model 

def car(make, model) 
  puts "#{make} #{model}" 
end 

car('Toyota', 'Corolla') 

#Print me

def print_me
  puts "I'm printing with the method!"
end 
print_me  

#Print me pt 2 

def print_me 
  "I'm printing with the return value!"
end 

puts print_me 

#Greeting through methods

def greeting 
  "Hello "
end 

def place
  "World!" 
end 

puts "#{greeting} #{place}" 

#Greeting through methods pt 2 

def hello
  'Hello'
end

def world
  'World'
end

def greet 
  hello + ' ' + world 
end 

puts greet 

#Make and model 

def car(make, model) 
  puts "#{make} #{model}" 
end 

car('Toyota', 'Corolla') 

#naming animals 

def dog(name)
  return name  
end 

def cat(name) 
  return name 
end 

puts "the dog's name is #{dog('Spot')}." 
puts "The cats name is #{cat('Ginger')}." 
#just needed to add (name) to dog method and specify the name for the cat. 

#Name not found 

def assign_name(name = 'Bob')
  name 
end 

puts assign_name('Kevin') == 'Kevin' 
puts assign_name == 'Bob' 
#This method is iven a defualt value but can accept others if given. 

#Multiply the sum 

def add(x, y)
  x + y
end 

def multiply(x, y) 
  x*y
end 

puts add(2, 2) == 4
puts add(5, 4) == 9 
puts multiply(add(2, 2) add(5, 4)) == 36 

#Random scentence

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(array)
  array.sample 
end 

def activity(array) 
  array.sample 
end 

def sentence(name, activity)
  name + ' went ' + activity + ' today!'
end 

puts sentence(name(names), activity(activities))
#The Sample method takes a random value from an array and returns it. 
