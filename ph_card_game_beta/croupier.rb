card_deck = ["2", "2", "2", "2", "3", "3", "3", "3", "4", "4", "4", "4", "5", "5", "5", "5", "6", "6", "6", "6", "7", "7", "7", "7", "8", "8", "8", "8", "9", "9", "9", "9", "10", "10", "10", "10", "J", "J", "J", "J", "Q", "Q", "Q", "Q", "K", "K", "K", "K", "A", "A", "A", "A", "Joker", "Joker"]

@player_one = [
  player1_hand_cards = [],
  player1_top_cards = [],
  player1_bottom_cards = []
]
@player_two = [
  player2_hand_cards = [],
  player2_top_cards = [],
  player2_bottom_cards = []
]
3.times do
  count = card_deck.count
  @player_one[0] << card_deck.delete_at(rand(0..count))
  @player_one[1] << card_deck.delete_at(rand(0..count))
  @player_one[2] << card_deck.delete_at(rand(0..count))
  @player_two[0] << card_deck.delete_at(rand(0..count))
  @player_two[1] << card_deck.delete_at(rand(0..count))
  @player_two[2] << card_deck.delete_at(rand(0..count))
end

# print "#{@player_one} \n"
# print "#{@player_two} \n"
# print card_deck
