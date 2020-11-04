require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total (number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit? (card_total)
  prompt_user
  response = get_user_input
  if response == "s"
    card_total
  elsif response == "h"
    card_total += deal_card
  else
    invalid_command
    prompt_user
    get_user_input
  end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit? (sum)
    display_card_total (sum)
  end
  end_game (sum)
end
