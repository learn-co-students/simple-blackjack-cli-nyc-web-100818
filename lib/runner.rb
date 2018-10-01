require_relative "blackjack.rb"

runner 
def runner
  welcome
  first_round = initial_round
  until initial_round > 21 do
    first_round = hit?(initial_round)
    display_card_total(initial_round)
  end
  end_game(initial_round)
end
