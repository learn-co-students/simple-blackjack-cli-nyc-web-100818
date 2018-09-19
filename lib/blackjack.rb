def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
return (rand(1..11))
end

def display_card_total(total)
puts "Your cards add up to #{total}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
return h_or_s = gets.chomp
end

def end_game(x)
puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
sum = deal_card + deal_card
display_card_total(sum)
return sum
end

def hit?(number)

prompt_user
input = get_user_input
if input === "h"
  dealtCard = deal_card
  number+= dealtCard
  return number
elsif input === "s"
  return number
else
  invalid_command
  prompt_user
  return number
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
total = 0
total += initial_round
until total > 21 do
total = hit?(total)
display_card_total(total)
end
return end_game(total)
end
