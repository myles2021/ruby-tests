require_relative 'croupier'
require_relative 'rules_of_cards'

# pile that players will put into
@in_play_pile = []
# if correct card is true then it can be put into in play pile
@correct_card = false
# potential method to check a burn?
@burn = 0
@high_card = 0

# check if the card input is a card that exists for a given player
def card_check(which_card, which_player)
  card_exists = false
  if card_exists == false
    which_player[0].each do |card|
      card_exists = true if which_card == card
    end
    if card_exists == false
      puts "Sorry, that card doesn't exist..."
      p1_new_top_card
      # need to stop the loop once they pick the correct card, break?
    end
  end
  which_card if card_exists == true
end

# ask for a card input
def which_card_question
  puts "Which card will you put in the pile: \n"
  answer = gets.chomp.downcase.gsub(/\s+/, '')
  if answer.include?('joker')
    answer.capitalize
  else
    answer.upcase
  end
end

# wrong card has been chosen, player picks up the deck
def false_card(card_choice, player)
  card_rules(card_choice, player)
  if @correct_card != true
    puts 'Sorry, that is the wrong card choice, pick up the in-play deck...'
    @in_play_pile.each { |ip_card| player[0] << ip_card }
  end
end

# asking for their choice, and checking if it is correct or not
def p1_new_top_card
  top_card_choice = card_check(which_card_question, @player_one)
  false_card(top_card_choice, @player_one) unless @in_play_pile.empty?
  # p1_new_top_card_potential(top_card_choice)
end

# moving the cards around different piles during the card choice and picking up a new card
def p1_new_top_card_potential(top_card_choice)
  unless top_card_choice.nil?
    @in_play_pile << top_card_choice
    @player_one[0].delete(top_card_choice)
    @player_one[0] << @card_deck.delete_at(0)
    print "#{@in_play_pile.reverse} \n"
  end
end

# def ai_new_top_card_simple
#   @in_play_pile << @player_two[0].delete_at(0)
#   @player_two[0] << @card_deck.delete_at(0)
#   print "#{@in_play_pile.reverse} \n"
# end

# top card in play is the in play pile index of minus 1 as it joins the array at the end
def top_card_in_play
  @top_in_play_card = @in_play_pile[-1]
end

# spliting the top card so that it can be analysed in another method
def tc_split
  top_card_in_play
  @tc_split = @top_in_play_card.split(//) unless @top_in_play_card.nil?
end

# new top card method for AI
def ai_new_top_card(p1_p2)

end

# sorting a players card by numeric value
def card_sort(player)
  player[0].each(&:reverse!)
  player[0].sort
  player[0].each(&:reverse!)
end

# def ai_new_top_card(p1_p2)
#   tc_split
#   true_cards = []
#   p1_p2[0].each do |card|
#     card_rules(card, p1_p2)
#     true_cards << card if @correct_card == true
#   end
#   true_cards.sort
#   if true_cards.empty?
#     @in_play_pile.each do |pick_up|
#       p1_p2[0] << pick_up
#     end
#   else
#     p1_p2[0] = []
#     true_cards.each do |t_card|
#       p1_p2[0] << t_card
#     end
#     @in_play_pile << p1_p2[0].delete_at(0)
#     card_count = @card_deck.size
#     p1_p2[0] << @card_deck.delete_at(rand(0..card_count))
#   end
#   print "#{@in_play_pile.reverse} \n"
# end

# checking if the last four cards are the same character and the pile can be burnt
def check_burn(card_in_question, p1_or_p2)
  suit_and_character = card_in_question.split(//)
  burn(p1_or_p2) if @in_play_pile[-1..-4] == [suit_and_character[1], suit_and_character[1], suit_and_character[1]]
end


def burn(p1_p2)
  @in_play_pile.each do |card|
    p1_p2[0] << card
  end
end
