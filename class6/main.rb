require './tenant'
require './landlord'

# Exercise 1
# I should be able to create a tenant and/or landlord object
#tenant = Tenant.new
#landlord = Landlord.new


# Exercise 2
# I should be able to create a tenant object with the name, gender and dob
# attributes set during construction
 tenant = Tenant.new('Selina Kyle', 'Female', '03-08-1981')

# Exercise 3
# I should be able to retrieve the values of the attributes name, gender and dob
# for a tenant
 puts "The tenants name is #{tenant.name}, born on the #{tenant.dob} and his or her gender is #{tenant.gender}"

# Exercise 4
# I should only be able to set the no_of_dependants, occupation and annual_income
# for a tenant
 tenant.no_of_dependents = 1
 tenant.occupation = 'Ruby on rails engineer'
 tenant.annual_income = 120000.0

# Exercise 5
# I should be able to report the tenants age
 puts "The tenants age is #{tenant.age}"

# Exercise 6
# I should be able to report the tenants income tier
 puts "The tenants income tieris #{tenant.income_tier}"

# Exercise 7
# I should be able to create a landlord object with the name, gender and dob
# attributes set during construction
 landlord = Landlord.new('Harper Row', 'Male', '21-03-1983')

# Exercise 8
# I should be able to retrieve the values of the attributes name, gender and dob
# for a landlord
 puts "The landlords name is #{landlord.name}, born on the #{landlord.dob} and his or her gender is #{landlord.gender}"

# Exercise 9
# I should be able to report the landlords age
 puts "The landlords age is #{landlord.age}"

# Demo 10
# There appears to be some code duplication! Let's DRY up our attributes

# Demo 11
# There appears to be some code duplication! Let's DRY up our method