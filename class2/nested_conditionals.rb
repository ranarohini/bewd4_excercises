################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 2.5
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################

def get_day
  puts "What day of the week am I thinking of?"
  user_input = gets.chomp
end

def get_number
  puts "What number am I thinking of?"
  num = gets.chomp
  num.to_i
end

def compare_day(day)
  if day == $programs_day_of_week then
    puts "Correct!"
  else
    puts "Wrong!"
  end
end

def compare_inputs(day, number)
  if day == $programs_day_of_week && number == $programs_number then
    puts "Correct!"
  elsif number == $programs_number then
    puts "Number Correct!"
  elsif day.eql? $programs_day_of_week then
    puts "Day of the week is correct!"
  else
    puts "Wrong!"
  end
end

def decide_win(day, number)
  if day == $programs_day_of_week || number == $programs_number then
    puts "You Won!"
  else
    puts "You Lost!"
  end
end

# Global variables
$programs_day_of_week = 'tuesday'
$programs_number = 3

guess = get_day
compare_day(guess)

guess_day = get_day
guess_number = get_number
compare_inputs(guess_day, guess_number)

guess_day = get_day
guess_number = get_number
decide_win(guess_day, guess_number)

