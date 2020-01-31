#first car

first_car = { 
  type:    'sedan', 
  color:   'blue', 
  mileage:  80_000
} 
#This syntax is easier to read so try to stick to this

#Adding the year

car = { 
  type:    'sedan', 
  color:   'blue', 
  mileage:  80_000
} 

car[:year] = 2003 

#Broken odometer 

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}
car.delete(:mileage)

#what color? 

car = {
  type:   'sedan',
  color:  'blue',
  year    '2003'
}
puts car[:color] 
#Its important to remember that inorder to select the value, you must call on the key within the hash. 

#Labeled numbers 

numbers = {
  high:   100,
  medium: 50, 
  low:    10 
}

numbers.each do |key, value| 
  puts "A #{key} number is #{value}." 
end 
#It's very convenient that it just works out that way

#Divided by two 

numbers = {
  high:    100,
  medium:  50, 
  low:     10
}
divided_by_two = numbers.map { |k, v| v / 2 } 

p divided_by_two 
#Same as the solution given but on three lines rather than five

#Low, Medium, or High? 

numbers = {
  high:   100,
  medium: 50, 
  low:    10 
} 
low_numbers = { numbers.select do |k, v| v < 25} 

p low_numbers 

#Low or Nothing 

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers

#Multiple Cars 

multiple_cars = { 
  car = {
    type:   'sedan',
    color:  'blue',
    year:    2003 
  }

  truck = {
    type:   'pickup',
    color:  'red',
    year:    1998
  }
}
#For this hash it would have probably made more sense to make the nested hashes in two lines side by side

#Which Collection?

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]] 
