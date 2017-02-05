# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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

# Copy your driver code from the previous exercise below:

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
