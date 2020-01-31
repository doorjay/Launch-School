def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1) 
=begin
It doesn't specify that the method can take more than one value but, it also uses the each method 
this leads the computer look for multiple elements when it can only take one in the first place. 
When they call on the method they should be giving it in an array form.  
=end 

#Weather Forecast 

def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
=begin 
It will always out put as true beccause the sunchone array has true and false as strings. Strings
are always considered true so even if the program samples 'false', because it is a string it does
not function as false. 
=end 

#Multiply by Five

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"
=begin 
What's happening is that the user input is taken as a string. So, it will print the string '10' 
5 times in a row rather than multiply the integer 10 by 5. 
=end 

#Pets 

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] = 'bowser'

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"} 
=begin 
Here the value 'bowser' is replacing the values 'sparky' and 'fido'. To fix this you can add the 
method .push to the end of pets[:dog] and it should add 'bowser' as the last value of the dogs key
=end 

#Even Numbers

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]
=begin
The first n is what's trippying up your code. if n.even? is enough because it will output a true or 
false accordingly and will only keep true numbers. 
=end 

#Confucius says 

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
=begin 
I think that because this uses only if's intead of if/elsif/else it will only properly return one of the
quotes correctly. So if you were to change that it should work or maybe use return that way the return value
is the quote. 
=end 

#Account Balance 

# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance = calculate_balance(month)
end
=begin 
there is a lot going on here so it was quite tricky finding what was wrong. we know that it must
be something wrong with addition/subtraction so the hashes themselves are okay. This narrows it down
to the methods. If we test the calculate balance method we find that it works just fine. However,
when finding the "balance" portion of the code there is suddenly a problem. It only take the last month 
as income and the last month expenses as expenses. This is because there is nothing in the code that
says to add the previous balance to the total before moving on to the next set of elements. So this 
should be fixed if we just add a plus sign to the front of the equals or add "balance" to calculate balance.
=end 

#Colorful Things

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
=begin 
alright this was also a tricky one but, when dealing with loops the most common mistake is in the
break condition and with arrays he thing everyone forgets is that the index of all arrays starts with
0. This is precisely what happend here! The break condition is directly tied to the length of the colors
array. This is totally okay to do but, you have to keep in mind the length of arrays and that the break 
condtion will not work until "i" is GREATER than the length of the array. This combined with the way the 
length of arrays are calculated leads to the code not printing after it reaches the second to last element.
to fix this we can set the break condtion to equal the colors.length. There is still a problem though because
there are not the same number of elements in both arrays. To fix this you can make a bolean that includes the 
other array so that if one reaches its last element it stops printing. 
=end 

#Digit Product

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 0

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0
=begin 
I'm lmost positive that this is just multiplying everything by zero over and over again because the product is left
at zero and nothing touches it. So, if you want to get not zero, you have to change the value of product in the method. 
=end 

#Wariors and Wizards 

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge(character_classes[input])

puts 'Your character stats:'
puts player
=begin 
there are two things here that give the errors. The first is that the character calsses are stored as symbols
so, you have to convert the player input to a symbol in order to get that changed. THe second thing is that 
once we are able to choose a class, that new information doesn't mustate the caller so you have to add an "!"
to the merge method. If you really wanted you could make a whole new hash for the updated payer values as well. 
