
characters = [
  { name: 'Alfred Pennyworth', gender: :male },
  { name: 'Selina Kyle', gender: :female },
  { name: 'Harper Row', gender: :male },
  { name: 'Tim Drake', gender: :male },
  { name: 'Kate Kane', gender: :female },
  { name: 'Barbara Gordon', gender: :female }
]

# Exercise 1
# Print out all the names of the female characters

characters.each do |item|
#  if item[:gender].to_s == 'female'
 #   puts item[:name]
  #end
  puts item[:name] if item[:gender] == :female
end

# Exercise 2
# Modify the original list of participants by separating the characters name
# into two fields so for example name: would be replaced by first_name: and last_name:
# i.e. { name: 'Alfred Pennyworth', gender: :male } becomes
# { first_name: 'Alfred', last_name: 'Pennyworth', gender: :male }

mod_characters = characters.map do |character|
  #name = character[:name]
  gender = character[:gender]
  first_name = character[:name].split.first
  last_name = character[:name].split.last
  { first_name: first_name, last_name: last_name, gender: gender }
end

puts mod_characters

# Exercise 3
# Calculate the number of male characters
# male_participant_count = ?

male_participant_count = characters.reduce(0) do |count, character|
  if character[:gender] == :male
    count = count + 1
  else
    count
  end
end

puts "Male Participant count #{male_participant_count}"
