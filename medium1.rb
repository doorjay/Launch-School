# Medium 1 

# Rotations Part 1 

=begin 
  Write a method that rotates an array by moving the first element to the end of the array 
  The original array should not be modified. Do not use the method rotate or rotate! for
  your implementation. 
=end 

def rotate_array(array) 
  array[1..-1] + [array[0]] 
end 

# Rotation Part 2

# Write a method that can rotate the last n digits of a number. 

def rotate_array(array, index) 
  arr_dup = array.dup 
  target = arr_dup.delete_at(index) 

  arr_dup.push(target)
end 

def rotate_rightmost_digits(number, rotate) 
  if rotate == 1
    return number 
  else 
    num_array = number.digits.reverse 
    target = -index 

    rotate_array(num_array, target).join.to_i 
end 

# Rotation Part 3 

=begin 
  If you take a number like 735291, and rotate it to the left, you get 352917. If you now
  keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
  Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits
  fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in
  place and rotate the final 2 digits to get 321579. The resulting number is called the
  maximum rotation of the original number.

  Write a method that takes an integer as argument, and returns the maximum rotation of 
  that argument. You can (and probably should) use the rotate_rightmost_digits method from
  the previous exercise.
=end 

def rotate_array(array, index) 
  arr_dup = array.dup 
  target = arr_dup.delete_at(index) 

  arr_dup.push(target)
end 

def rotate_rightmost_digits(number, rotate) 
  if rotate == 1
    return number 
  else 
    num_array = number.digits.reverse 
    target = -index 

    rotate_array(num_array, target).join.to_i 
end 

def max_rotation(number)
  all_nums = number.to_s.chars 
  size = all_nums.size 

  loop do 
    all_nums = rotate_rightmost_digits(all_nums, size) 
    size -= 1 
    break if size == 0 
  end 
  all_nums.join.to_i 
end 

# 1000 Lights 

=begin 
  You have a bank of a swithes before you, numbered from 1 to n. Each switch is connected 
  to exactly one light that is initially off. You walk down the row of switchs and toggle 
  every one of them. You go back to the beggining, and on this second pass, you toggle
  switches 2, 4, 6, and so on. On the third pass, you go back again to the beggining and 
  toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have 
  been through n repetitions. 

  Write a method that takes one argumetn, the total number of switches, and returns an Array
  that identifies which lights are on after n repetitions. 
=end 


def turn_on!(switches, divisor)
  switches.each_with_index do |switch, i|
    switches[i] = !switch if (i + 1) % divisor == 0
  end
end


def get_result(switches)
  result = []
  switches.each_with_index do |switch, i|
    result << i + 1 if switch
  end
  result
end

# MAIN FUNCTION 
def switches_on(num)
  switches = Array.new(num) { |i| false }
  1.upto(num) { |i| turn_on!(switches, i) }
  get_result(switches)
end

# Diamonds 

=begin 
  Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd 
  integer that is supplied as an argument to the method. You may assume that the argument
  will always be an odd integer.
=end 

def diamond(num)
  spaces = num / 2
  star = 1

  (num/2).times do
    puts (" " * spaces) + ("*" * star)
    spaces -= 1
    star += 2
  end

  (num/2 + 1).times do 
    puts (" " * spaces) + ("*" * star)
    spaces += 1
    star -= 2
  end
end

# Stack Machine Interpretation 

=begin 
  a stack is a list of values that grows and shrinks dynamically. In ruby, a stack is easily 
  implemented as an Array that just uses the #push and #pop methods. 

  A stack-and-register programming language is a language that uses a stack of values. Each 
  operation in the language operates on a register, which can be thought of as the current 
  value. The register is not part of the stack. Operations that require two values pop the 
  topmost item from the stack (that is, the operation removes the most recently pushed value 
  from the stack), perform the operation using the popped value and the register value, and
  then store the result back in the register.

  Consider a MULT operation in a stack-and-register language. It multiplies the stack value
  with the register value, removes the value from the stack, and then stores the result back
  in the register. Thus, if we start with a stack of 3 6 4 (where 4 is the topmost item in
  the stack), and a register value of 7, then the MULT operation will transform things to 3 6
  on the stack (the 4 is removed), and the result of the multiplication, 28, is left in the
  register. If we do another MULT at this point, then the stack is transformed to 3, and the
  register is left with the value 168. 

  Write a method that implements a miniature stack-and-register-based programming language 
  that has the following commands:

  n     Place a value n in the "register". Do not modify the stack.
  PUSH  Push the register value on to the stack. Leave the value in the register.
  ADD   Pops a value from the stack and adds it to the register value, storing the result in the register.
  SUB   Pops a value from the stack and subtracts it from the register value, storing the result in the register.
  MULT  Pops a value from the stack and multiplies it by the register value, storing the result in the register.
  DIV   Pops a value from the stack and divides it into the register value, storing the integer result in the register.
  MOD   Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
  POP   Remove the topmost item from the stack and place in register
  PRINT Print the register value

  All operations are integer operations (which is only important with DIV and MOD).

  Programs will be supplied to your language method via a string passed in as an argument. 
  Your program may assume that all programs are correct programs; that is, they won't do 
  anything like try to pop a non-existent value from the stack, and they won't contain 
  unknown tokens.

  You should initialize the register to 0.
=end 


def minilang(string)
  stack = []
  full_string = string.split
  register = 0
  current_string = ''

  until full_string.empty?
    current_string = full_string.shift
    case current_string
      when 'PUSH' then stack << register
      when 'ADD' then register = stack.pop.to_i + register
      when 'SUB' then register = register - stack.pop.to_i
      when 'MULT' then register = register * stack.pop.to_i
      when 'DIV' then register = register / stack.pop.to_i
      when 'MOD' then register = register % stack.pop.to_i
      when 'POP' then register = stack.pop
      when 'PRINT' then puts register
      else register = current_string.to_i
    end
  end
end 

# Word to Digit 

=begin 
  Write a method that takes a scentence string as input, and returns the same string with any 
  sequence of words 'zero', 'one', 'two', 'three', 'four' conerted into a string of digits. 
=end 

CONVERSION_HASH = {  'one' => 1,
                      'two' => 2,
                      'three' => 3,
                      'four' => 4,
                      'five' => 5,
                      'six' => 6,
                      'seven' => 7,
                      'eight' => 8,
                      'nine' => 9, 
                      'zero' => 0
                    } 

def word_to_digit(string) 
  CONVERSION_HASH.each do |key, value| 
    string.gsub!(key, value.to_s) 
  end 
  string 
end 

# Fibonacci Numbers (Recursion) 

=begin
  The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is 
  the sum of each of the previous two numbers. 1 1 2 3 5 8 13 etc. 

  Write a recursive method for the nth Fibonacci number, where nth is an argument to the 
  method.
=end 

def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end


# Fibonacci Numbers (procedural) 

=begin
  In the previous exercise, we develeoped a recursive solotion to calculating the nth Fibonacci
  number. In a language that is not optimized for recursion, some (not all) recursive methods
  can be extremely slow and require massive amounts of memory and/or stack space. 

  Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion. 
  as a result , the Fibonacci solution is only useful up to about fibonacci(40). With higher
  values of nth, the recursive solution is impractical. Fortunately, every recursive method 
  can be rewritten as a non-concecutive (procedural) method. 
=end 

def fibonacci(number)
  first, last = 1, 1

  3.upto(number) do
    first, last = last, first + last
  end

last
end

#Fibonacci Numbers (Last Digit) 

=begin
In the previous exercise, we developed a procedural method for computing the value of the
nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st 
Fibonacci sequence almost instantly.

In this exercise, you are going to compute a method that returns the last digit of the nth
Fibonacci number.
=end 

def fibonacci_last(nth) 
  fibonacci(nth).to_s[-1].to_i 
end 
