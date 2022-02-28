require_relative 'croupier'
require_relative 'rules_of_cards'

@in_play_pile = []
@correct_card = false
@burn = 0
@high_card = 0

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

def which_card_question
  puts "Which card will you put in the pile: \n"
  answer = gets.chomp.downcase.gsub(/\s+/, '')
  if answer.include?('joker')
    answer.capitalize
  else
    answer.upcase
  end
end

def false_card(card_choice, player)
  card_rules(card_choice, player)
  if @correct_card != true
    puts 'Sorry, that is the wrong card choice, pick up the in-play deck...'
    @in_play_pile.each { |ip_card| player[0] << ip_card }
  end
end

def p1_new_top_card
  top_card_choice = card_check(which_card_question, @player_one)
  false_card(top_card_choice, @player_one) unless @in_play_pile.empty?
  # p1_new_top_card_potential(top_card_choice)
end

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

def top_card_in_play
  @top_in_play_card = @in_play_pile[-1]
end

def tc_split
  top_card_in_play
  @tc_split = @top_in_play_card.split(//) unless @top_in_play_card.nil?
end

def ai_new_top_card(p1_p2)

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

def check_burn(card_in_question, p1_or_p2)
  suit_and_character = card_in_question.split(//)
  burn(p1_or_p2) if @in_play_pile[-1..-4] == [suit_and_character[1], suit_and_character[1], suit_and_character[1]]
end

def burn(p1_p2)
  @in_play_pile.each do |card|
    p1_p2[0] << card
  end
end
