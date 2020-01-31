#whats my value pt 1
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
#my answer a = 7 actual answer a = 7
=begin 
The value of "a" doesnt change because there isn't anything in the code 
that actually changes it. The only time it is used when it was called 
to the my_method method
=end 

#Whats my value pt 2
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a 

=begin 
The answer is the same as before because even though the variable in the method
is "a" the actual value of a is seperate. There is still no reason for a to change
=end 

#whats my value pt 3

a = 7 

def my_value(b) 
  a = b 
end 

my_value(a + 5) 
puts a 

=begin 
Again the value should remain as 7 because outside of the method a has not been 
altered in anyway. 
=end 

#whats my value pt 4

a = "Xyzzy" 

def my_value(b) 
  b[2] = '-' 
end 

my_value(a) 
puts a 

=begin 
This time the value of a is a string value we can mutate that string within 
the method and have it remain whatever changed value it is. This means the
 code will print out Xy-zy rather than Xyzzy.
=end 

# Whats my value pt 5

a ="Xyzzy" 

def my_value(b) 
  b = 'yzzyX' 
end 

my_value(a) 
puts a 

=begin 
Although it is possible to change the value of a string within the method
we were only able to do that because we were changing a specific portion of
the already existing value. In this case we would be replacing the value entirely 
instead of modifying it so, a should remain as Xyzzy. 
=end 

#Whtas my value pt 6 

a = 7

def my_value(b) 
  b = a + a 
end 

my_value(a) 
puts a 

=begin 
I got slipped up on this one but it actually wont print out a value at all! 
This is beacuse despite a being asigned a value before the method, the variable
value is not visible from within the method. so it gets confused and says there's 
no local variable defined for a. 
=end 

#whats my value pt7

a = 7 
array = [1, 2, 3,] 

array.each do |element| 
  a = element 
end 

puts a 

=begin 
this is a method invocation with a block! It has different rules and can see 
variables outside of the block. This means that even though a is defined outside 
of the block, it can still be mutated and in this case three times(once for each
value within the array) this means it ends with the last value in the array, 3. 
=end 

#Whats my value pt 8 

array = [1, 2, 3] 

array.each do |element| 
  a = element 
end 

puts a 

=begin 
This will output an error message because the variable "a" has not been assigned 
a value yet. Method invocations with blocks are not capable of assigning varialbes
values if they dont have one yet(at least this is my understanding so far). 
=end 

#whats my value pt 9 

a = 7 
array = [1, 2, 3]

array.each do |a| 
  a += 1 
end 

puts a 

=begin 
So because the variabel within the block and the variable defined outside of the 
block are the same variable, ruby will look for the first variable "a" it can find 
starting from the block and then stop looking. this means that the variable "a" outside
of the block goes untouched and unchanged leaving it with the value 7. 
=end 

#Whats my value pt 10

a = 7
array = [1, 2, 3] 

def my_value(ary) 
  ary.each do |b| 
    a += b 
  end 
end 

my_value(array) 
puts a 

=begin 
The variable a should remain as 7 because it is not visible from within the my_method
method, this also means that when the each method searches for a value to make "a" it
cannot find one. This means that the my_value(array) will output and error message. 
=end 
