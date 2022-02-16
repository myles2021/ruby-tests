# @card_deck = ["2", "2", "2", "2", "3", "3", "3", "3", "4", "4", "4", "4", "5", "5", "5", "5", "6", "6", "6", "6", "7", "7", "7", "7", "8", "8", "8", "8", "9", "9", "9", "9", "10", "10", "10", "10", "J", "J", "J", "J", "Q", "Q", "Q", "Q", "K", "K", "K", "K", "A", "A", "A", "A", "Joker", "Joker"]

@card_deck = []
suits = %w[S C D H]
@characters = %w[2 3 4 5 6 7 8 9 10 J Q K A]

@characters.each do |character|
  suits.each do |suit|
    @card_deck << "#{suit}#{character}"
  end
end

@card_deck.push('Joker1', 'Joker2')

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

def deal_cards
  3.times do
    card_count = @card_deck.size
    @player_one.each do |card_group|
      card_group << @card_deck.delete_at(rand(0..card_count))
    end
    @player_two.each do |card_group|
      card_group << @card_deck.delete_at(rand(0..card_count))
    end
  end
end

# card_group.pop until card_group.empty?

# print "#{@player_one} \n"
# print "#{@player_two} \n"
# print @card_deck
