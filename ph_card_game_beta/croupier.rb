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

def nil_check(p1_p2)
  p1_p2.each do |card_group|
    card_group.each do |card|
      card.replace(@card_deck.delete_at(0)) if card.nil?
    end
  end
end

# card_group.pop until card_group.empty?

# print "#{@player_one} \n"
# print "#{@player_two} \n"
# print @card_deck
