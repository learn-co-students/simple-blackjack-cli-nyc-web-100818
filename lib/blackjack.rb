def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  $card_total = total
  display_card_total($card_total)
  $card_total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 's'
    $card_total = total
  elsif input == 'h'
    add = deal_card
    total += add
    $card_total = total
  else
    invalid_command
    prompt_user
    $card_total = total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  $card_total = 0
  welcome
  initial_round
  until $card_total > 21
    hit?($card_total)
    display_card_total($card_total)
  end
  end_game($card_total)
end
