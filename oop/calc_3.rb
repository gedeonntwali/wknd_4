# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module Calculators

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class SimpleCalculator
  include Calculators
end

class FancyCalculator
  include Calculators

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator
  include Calculators

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

puts "Testing fancy_calculator"
puts

fancy_calculator = FancyCalculator.new

result = fancy_calculator.add(3,5)
if result == 8
  puts "PASS"
else 
  puts "FAIL"
end

result = fancy_calculator.subtract(6,2)
if result == 4
  puts "PASS"
else 
  puts "FAIL"
end

result = fancy_calculator.multiply(3,4)
if result == 20
  puts "PASS"
else
  puts "FAIL"
end

result = fancy_calculator.divide(10,2)
if result == 7
  puts "PASS"
else
  puts "FAIL"
end

result = fancy_calculator.square_root(16)
if result == 4
  puts "PASS"
else
  puts "FAIL"
end

puts "Testing Whiz Bang Calculator"
puts

whiz_bang_calculator = WhizBangCalculator.new

result = whiz_bang_calculator.hypotenuse(3,4)
if result == 5
  puts "TRUE"
else
  puts "FALSE"
end

result =whiz_bang_calculator.exponent(4,2)
puts result
if result == 16
  puts "TRUE"
else
  puts "FALSE"
end