require_relative 'croupier'
require_relative 'poophead'

puts 'Welcome to the beta card game: "Poophead"!'
sleep(1)
puts "Shuffling the deck..."
sleep(1)

running = true

while running == true
  nil_entry = true
  while nil_entry == true
    deal_cards
    nil_entry = false unless @player_one[0..2][0..2].include?(nil) && @player_two[0..2][0..2].include?(nil)
  end
  print "Cards frozen as your top cards: #{@player_one[1]} \n"
  print "Cards frozen as AI top cards: #{@player_two[1]} \n"
  print "Cards in your hand: #{@player_one[0]} \n"
  print "Card deck #{@card_deck} \n"
  p1_new_top_card
  print "Cards in your hand: #{@player_one[0]} \n"
  ai_new_top_card_simple
  p1_new_top_card
  print "Cards in your hand: #{@player_one[0]} \n"
  running = false
end
