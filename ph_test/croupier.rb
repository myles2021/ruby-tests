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

# shuffle the cards
5.times do
  @card_deck.shuffle!
end

@player_one = []
@player_ai = []

10.times do
  @player_one << @card_deck.delete_at(0)
  @player_ai << @card_deck.delete_at(0)
end
