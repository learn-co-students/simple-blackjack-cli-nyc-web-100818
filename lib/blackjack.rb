def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 'h'
    total += deal_card
    total
  elsif input == 's'
    total
  else
    invalid_command
  end
end

def invalid_command

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  runner_total = 0
  welcome
  runner_total = hit?(initial_round)
  display_card_total(runner_total)
  while runner_total < 22 do
    runner_total += hit?(runner_total)
    display_card_total(runner_total)
  end
end_game(runner_total)
end
