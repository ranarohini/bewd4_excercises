# This method adds two numbers and returns the
# sum of the two numbers
def add(x,y)
  x + y
end

# This method calculates the difference of two numbers
# and returns the difference of the two numbers
def minus(x,y)
  x - y
end

# This method calculates the product of two numbers
# and returns the product of the two numbers
def multiply(x,y)
  x * y
end

# This method calculates the division of two numbers
# and returns the division of the two numbers
def divide(x,y)
  if y == 0 then
  	0
  else
	x / y
  end
end

puts 'Welcome to our simple calculator'
puts 'Value of x: '
first_value = gets.chomp.to_i

puts 'Value of y: '
second_value = gets.chomp.to_i

# TODO: Finish this code below
puts "Sum of x and y is " + add(first_value,second_value).to_s
puts "Difference of x and y is #{minus(first_value,second_value)}"
puts "Product of x and y is #{multiply(first_value,second_value)}"
puts "Division of x by y is #{divide(first_value,second_value)}"