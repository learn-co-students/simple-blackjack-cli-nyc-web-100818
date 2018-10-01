def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end

def hit?(current_card)
  prompt_user
    user_input = get_user_input
    if user_input == "h"
      dealed_card = deal_card
      current_card += dealed_card
      return current_card
    elsif user_input == "s"
      return current_card
    else
      invalid_command
      prompt_user
      return current_card
    end
end


def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  first_round = initial_round
  until first_round > 21 do
    first_round = hit?(first_round)
    display_card_total(first_round)
  end
  end_game(first_round)
end

def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end
