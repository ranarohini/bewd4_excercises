def display_rules
	puts "Here are the rules to play the game:"
	puts "1. You must guess a number between 1 to 10."
	puts "2. You only have 3 tries to do so."
	puts "Let's begin the game!"
end

def welcome_user
	puts '###############################################################################'
	puts '#'
	puts '# 	SECRET GAME'
	puts '# Welcome! This game is developed by Rohini Rana'
	puts '#'
	puts '###############################################################################'
	puts "What's your name?"
	user_name = gets
	puts "Hi " + user_name + "!"
end

def get_number
	user_input = gets.chomp
  user_input.to_i
end

secret = 8
trial = 3

welcome_user
display_rules

begin
	if trial == 0 then
		puts "Sorry! You have lost the game. The Secret number was #{secret}"
		break
	else
		puts "You have #{trial} guesses before the game is over. Enter a number."
		guess = get_number
		if guess == secret then
			puts "CONGRATULATION!!! You have won the game!"
			break
		elsif guess > secret then
				puts "Sorry! Your guessed number is too high."
		else
				puts "Sorry! Your guessed number is too low."
		end
	end
	trial = trial - 1
end until trial < 0
