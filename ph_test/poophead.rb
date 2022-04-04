require_relative 'croupier'
# require_relative 'rules_of_cards'

@in_play_pile = []

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

def card_switch_p1(top_card_choice)
  @in_play_pile << top_card_choice
  @player_one.delete(top_card_choice)
  @player_one << @card_deck.delete_at(0)
  print "#{@in_play_pile.reverse} \n"
end

def p1_card
  print "#{@player_one} \n"
  card_choice = which_card_question
  card_switch_p1(card_choice)
end

def card_switch_ai
  @in_play_pile << @player_ai.delete_at(0)
  @player_ai << @card_deck.delete_at(0)
  print "#{@in_play_pile.reverse} \n"
end

def ai_card
  print "#{@player_ai} \n"
  card_switch_ai
end
