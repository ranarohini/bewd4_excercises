require './person'

require './address'

person1 = Person.new('Selina Kyle', 'Female', '03-08-1981') #create object
# person1.gender = 'Female'
# person1.dob = '03-08-1981'
# person1.no_of_dependents = 1
person1.occupation = 'Hero'
person1.annual_income = 25000.00


person2 = Person.new('Harper Row', 'Male', '21-03-1983')
# person2.name = 'Harper Row'
# person2.gender = 'Male'
# person2.dob = '21-03-1983'
person2.no_of_dependents = 0
person2.occupation = 'Hero'


puts "Person 1: #{person1.name} #{person1.dob}"
puts "Person 2: #{person2.name} #{person2.dob}"


# person1.street_address = Address.new #create object
# person1.street_address.street1 = '120 Wycombe Rd'
# person1.street_address.street2 = ''
# person1.street_address.suburb = 'Neutral Bay'
# person1.street_address.state = 'NSW'
# person1.street_address.post_code = 2089
# person1.street_address.country = 'Australia'
# person1.street_address.address_type = :street


# person1.mailing_address = Address.new #create object
# person1.mailing_address.street1 = '120 Wycombe Rd'
# person1.mailing_address.street2 = ''
# person1.mailing_address.suburb = 'Neutral Bay'
# person1.mailing_address.state = 'NSW'
# person1.mailing_address.post_code = 2089
# person1.mailing_address.country = 'Australia'
# person1.mailing_address.address_type = :mailing


#person1.addressses = [] taken care by initalize method
person1.addressses << Address.new
person1.addressses.first.street1 = '120 Wycombe Rd'
person1.addressses.first.street2 = ''
person1.addressses.first.suburb = 'Neutral Bay'
person1.addressses.first.state = 'NSW'
person1.addressses.first.post_code = 2089
person1.addressses.first.country = 'Australia'
person1.addressses.first.address_type = :street


person1.addressses << Address.new #create object
person1.addressses.last.street1 = 'Wycombe Rd'
person1.addressses.last.street2 = ''
person1.addressses.last.suburb = 'Neutral Bay'
person1.addressses.last.state = 'NSW'
person1.addressses.last.post_code = 2089
person1.addressses.last.country = 'Australia'
person1.addressses.last.address_type = :mailing

# address2 = Address.new
# address2.street1 = '42 Military Road'
# address2.street2 = ''
# address2.suburb = 'Neutral Bay'
# address2.state = 'NSW'
# address2.post_code = 2089
# address2.country = 'Australia'
# address2.address_type = :street
# address2.person_id = 2

puts "Address : #{person1.addressses[0].street1} #{person1.addressses[0].suburb}"
puts "Address : #{person1.addressses[1].street1} #{person1.addressses[1].suburb}"


# puts "Person 1 age: #{Person.age_from_dob(person1.dob)}" - object

puts "Person 1 age: #{person1.age_from_dob}"

puts "Person 2 age: #{person2.age_from_dob}"



puts "Person 1 tier: #{person1.calc_tier}"

puts "Person 2 tier: #{person2.calc_tier}"
