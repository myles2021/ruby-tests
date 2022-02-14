@card_deck = ["2", "2", "2", "2", "3", "3", "3", "3", "4", "4", "4", "4", "5", "5", "5", "5", "6", "6", "6", "6", "7", "7", "7", "7", "8", "8", "8", "8", "9", "9", "9", "9", "10", "10", "10", "10", "J", "J", "J", "J", "Q", "Q", "Q", "Q", "K", "K", "K", "K", "A", "A", "A", "A", "Joker", "Joker"]

# @card_deck = []

# suits = %w[S C D H]

# characters = %w[2 3 4 5 6 7 8 9 10 J Q K A]

# suits.each do |suit|
#   @card_deck << "#{suit} #{characters[(0..13)]}"
# end

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
    card_count = @card_deck.count
    @player_one.each do |card_group|
      card_group << @card_deck.delete_at(rand(0..card_count))
    end
    @player_two.each do |card_group|
      card_group << @card_deck.delete_at(rand(0..card_count))
    end
  end
end

# def no_nil_entry
#   if @player_one[0..2].include?(nil) && @player_two[0..2].include?(nil)
#     until @player_one[0..2].size == 9 && @player_two[0..2].size == 9
#       @player_one[0..2].pop until @player_one[0..2].empty?
#       @player_two[0..2].pop until @player_two[0..2].empty?
#       deal_cards until
#     end
#   end
# end
# def check_p1_cards
#   @player_one.each do |card_group|
#     if card_group.include?(nil)
#       card_group.pop until card_group.empty?
#       deal_cards
#     end
#   end
# end

# def check_p2_cards
#   @player_two.each do |card_group|
#     if card_group.include?(nil)
#       card_group.pop until card_group.empty?
#       deal_cards
#     end
#   end
# end

# @player_one[0] << @card_deck.delete_at(rand(0..card_count))
# @player_one[1] << @card_deck.delete_at(rand(0..card_count))
# @player_one[2] << @card_deck.delete_at(rand(0..card_count))
# @player_two[0] << @card_deck.delete_at(rand(0..card_count))
# @player_two[1] << @card_deck.delete_at(rand(0..card_count))
# @player_two[2] << @card_deck.delete_at(rand(0..card_count))

# print "#{@player_one} \n"
# print "#{@player_two} \n"
# print @card_deck
