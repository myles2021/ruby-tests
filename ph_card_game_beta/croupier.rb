@card_deck = []
suits = %w[S C D H]
@characters = %w[2 3 4 5 6 7 8 9 10 J Q K A]

# creating the cards
@characters.each do |character|
  suits.each do |suit|
    @card_deck << "#{suit}#{character}"
  end
end
@card_deck.push('Joker1', 'Joker2')

# creating ai and p1 card arrays
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

# adding cards into each card set for ai and p1
def deal_cards
  3.times do
    @player_one.each do |card_group|
      card_group << @card_deck.delete_at(0)
    end
    @player_two.each do |card_group|
      card_group << @card_deck.delete_at(0)
    end
  end
end

# checking if there is a nil input and replacing it with 0 index of the current card deck
def nil_check(p1_p2)
  p1_p2.each do |card_group|
    card_group.each do |card|
      card.replace(@card_deck[0]) if card.nil?
    end
  end
end
