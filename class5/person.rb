# Exercise 1
# Model 2 people using a hash, these two people
# have the following attributes
# person1 -> name: 'Selina Kyle', gender: 'Female', dob: '03-08-1981'
# person2 -> name: 'Harper Row', gender: 'Male', dob: '21-03-1983'

person1 = {name: 'Selina Kyle', gender: 'Female', dob: '03-08-1981'}
person2 = {name: 'Harper Row', gender: 'Male', dob: '21-03-1983'}

puts person1.to_s
puts person2.to_s

# Exercise 2
# Add the following attributes to our 2 people
# person 1 -> no_of_dependents: 1, occupation: 'Hero', annual_income: 25000.00
# person 2 -> no_of_dependents: 0, occupation: 'Hero', annual_income: nil

person1[:no_of_dependents] = 1
person1[:occupation] = 'Hero'
person1[:annual_income] = 25000.00

person2[:no_of_dependents] = 0
person2[:occupation] = 'Hero'
person2[:annual_income] = nil

puts person1.to_s
puts person2.to_s

# Demo 5
# Add a dynamic value which calculates the age of either person

# Exercise 6
# Add a dynamic value which categorises the person as tier 1, 2 or 3 as per the following rules
# < 100k annual income -> Tier 1
# >= 100k and < 200k -> Tier 2
# >= 200k -> Tier 3

# Demo 7
# Convert Person into a class

# Demo 9
# Create objects person 1 and 2

# Demo 11
# Create a relationship between person and address

# Demo 12
# Implement the age method in Person as a class method

# Exercise 13
# Implement the tier method in Person as a class method

# Demo 14
# Implement the age method as an instance method

# Exercise 15
# Implement the tier method as an instance method