# This module performs simple math operations

module SimpleMath
	# This method adds two numbers and returns the
	# sum of the two numbers
	def add(x,y)
	  x + y
	end

	module_function :add

	# This method calculates the difference of two numbers
	# and returns the difference of the two numbers
	def self.minus(x,y)
	  x - y
	end

	# This method calculates the product of two numbers
	# and returns the product of the two numbers
	def self.multiply(x,y)
	  x * y
	end

	# This method calculates the division of two numbers
	# and returns the division of the two numbers
	def self.divide(x,y)
	  if y == 0 then
	  	0
	  else
		x / y
    end
  end
end