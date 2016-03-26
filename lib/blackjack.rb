def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
 cards = (deal_card) + (deal_card)
 display_card_total(cards)
 return cards
end

def hit?(num)
  prompt_user
  s_or_h = get_user_input

  s_or_h == "h" ? num + deal_card : num


end

def invalid_command

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  while sum <= 21
  sum = hit?(sum)
  display_card_total(sum)
  end
  end_game(sum)
end

