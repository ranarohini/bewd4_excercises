require 'lib/person'
require 'lib/secret_number'

# Game
# This class holds most of the game logic and should:
#   Welcome players and inform them of the game rules.
#   Initialize the Player class.
#     Initialize the Secret Number class.
#     Prompt the user to choose a number, verify if the user guessed correctly.
#     If the user guesses incorrectly let them know if they were too high or too low.
#   Monitor how many guesses the player has before the game is over.

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
attr_accessor :person, :secret_num

def initialize player_name
  @person = Person.new(player_name)
  welcome_user
  display_rules
  secret_num = SecretNumber.new
  check_num(secret_num)
end

def display_rules
  puts "Here are the rules to play the game:"
  puts "1. You must guess a number between 1 to 10."
  puts "2. You only have 3 tries to do so."
  puts "Let's begin the game!"
end

def welcome_user
  puts "Hi #{@person.name}!"
end

# gets the input from the user
def get_input
  user_input = gets.chomp
  user_input.to_i
end

# check if the input is valid
def if_valid(num)
  if num >= 1 && num <= 10
    true
  else
    false
  end
end

def check_num secret_num
  (1..4).each do |trial|
    if trial == 4 then
      puts "Sorry! You have lost the game. The Secret number was #{secret_num}"
      break
    else
      puts 'You have ' + (4 - trial).to_s + ' guesses before the game is over. Enter a number.'
      guess = get_input
      if if_valid(guess) then
        if guess == secret_num.to_i then
          puts "CONGRATULATION!!! You have won the game!"
          break
        elsif guess > secret_num
            puts "Sorry! Your guessed number is too high."
        else
            puts "Sorry! Your guessed number is too low."
        end
      else
        puts "You must guess a number between 1 to 10."
      end
    end
  end
end

# secret_num = SecretNumber.new
  
end
