require './simple_math'

puts 'Welcome to our simple calculator'
puts 'Value of x: '
first_value = gets.chomp.to_i

puts 'Value of y: '
second_value = gets.chomp.to_i

# TODO: Finish this code below
puts "Sum of x and y is " + SimpleMath.add(first_value,second_value).to_s
puts "Difference of x and y is #{SimpleMath.minus(first_value,second_value)}"
puts "Product of x and y is #{SimpleMath.multiply(first_value,second_value)}"
puts "Division of x by y is #{SimpleMath.divide(first_value,second_value)}"