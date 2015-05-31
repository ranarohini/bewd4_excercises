# Gets the user's age from the STDIN and
# then converts to an integer
def get_user_age
  # chomp removes the end line character
  user_input = gets.chomp
  # to_i converts string to integer
  user_input.to_i
end


def is_an_adult(age)
  if age >= 18
  	true
  else
    false
  end
end

# Tells us whether the person is betweem the ages
# of 13 and 19
def is_a_teenager(age)
  if age >= 13 && age <= 19
    true
  else
	false
  end
end

puts 'How old are you?'
years = get_user_age
puts "Is an adult result: #{is_an_adult(years)}"
puts "Is an teenager result: #{is_a_teenager(years)}"