require_relative 'croupier'
require_relative 'poophead'

puts 'Welcome to the beta card game: "Poophead"!'
sleep(1)
puts "Shuffling the deck..."
# shuffling the cards a random amount of times between 0-5
shuff = rand(0..5)
shuff.times do
  @card_deck.shuffle!
end
sleep(1)

running = true

# starting a loop for the game to commence
while running == true
  deal_cards
  nil_check(@player_one)
  nil_check(@player_two)
  print "Cards frozen as your top cards: #{@player_one[1]} \n"
  print "Cards frozen as AI top cards: #{@player_two[1]} \n"
  print "Cards in your hand: #{@player_one[0]} \n"
  p1_new_top_card
  print "Cards in AI hand: #{@player_two[0]} \n"
  ai_new_top_card(@player_two)
  print "Cards in your hand: #{@player_one[0]} \n"
  p1_new_top_card
  print "Cards in AI hand: #{@player_two[0]} \n"
  ai_new_top_card(@player_two)
  print "Cards in your hand: #{@player_one[0]} \n"
  p1_new_top_card
  print "Cards in AI hand: #{@player_two[0]} \n"
  ai_new_top_card(@player_two)
  print "Cards in your hand: #{@player_one[0]} \n"
  p1_new_top_card
  print "Cards in AI hand: #{@player_two[0]} \n"
  ai_new_top_card(@player_two)
  print "Cards in your hand: #{@player_one[0]} \n"
  p1_new_top_card
  running = false
end
