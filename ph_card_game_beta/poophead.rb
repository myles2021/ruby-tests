require_relative 'croupier'

def card_check(which_card, which_player)
  card_exists = false
  while card_exists == false
    which_player[0].each do |card|
      card_exists = true if which_card == card
    end
    if card_exists == false
      puts "Sorry, that card doesn't exist..."
      p1_new_top_card
    end
  end
  which_card
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

@in_play_pile = []

def p1_new_top_card
  top_card_choice = card_check(which_card_question, @player_one)
  @in_play_pile << top_card_choice
  @player_one[0].delete(top_card_choice)
  card_count = @card_deck.size
  @player_one[0] << @card_deck.delete_at(rand(0..card_count))
  print "#{@in_play_pile.reverse} \n"
end

def recommended_card_choice
  # if @player_two
  # if top_card_in_play
end

# turn = false

# def players_go(p1_p2)
#   turn = true
# end

@correct_card = false
@top_in_play_card = @in_play_pile[-1]
@burn = 0
@high_card = 0

def ai_new_top_card_simple
  @in_play_pile << @player_two[0].delete_at(0)
  card_count = @card_deck.size
  @player_two[0] << @card_deck.delete_at(rand(0..card_count))
  print "#{@in_play_pile.reverse} \n"
end

def p1_correct_card(p1_array)
  true_cards = []
  p1_array[0].each do |card|
    card_rules(card, p1_array)
    true_cards << card if @correct_card == true
  end
  p1_array[0] << @in_play_pile [0..-1] if true_cards.empty?
  # and skip go
end

def ai_new_top_card(p1_p2)
  true_cards = []
  p1_p2[0].each do |card|
    card_rules(card, p1_p2)
    true_cards << card if @correct_card == true
  end
  true_cards.sort
  if true_cards.empty?
    @in_play_pile.each do |pick_up|
      p1_p2[0] << pick_up
    end
  else
    p1_p2[0] = []
    true_cards.each do |t_card|
      p1_p2[0] << t_card
    end
    @in_play_pile << p1_p2[0].delete_at(0)
    card_count = @card_deck.size
    p1_p2[0] << @card_deck.delete_at(rand(0..card_count))
  end
  print "#{@in_play_pile.reverse} \n"
end

def check_burn(card_in_question, p1_or_p2)
  suit_and_character = card_in_question.split(//)
  burn(p1_or_p2) if @in_play_pile[-1..-4] == [suit_and_character[1], suit_and_character[1], suit_and_character[1]]
end

def burn(p1_p2)
  if @burn == 13
    in_play_count = @in_play_pile.count
    in_play_count.times do
      p1_p2[0] << @in_play_pile.delete_at(0)
    end
  end
end

def card_ace
  @correct_card = true unless @top_in_play_card.include?(@characters[5]) # 7
end

def card_king
  @correct_card = true if @top_in_play_card != (@characters[5] || @characters[12]) # 7 & Ace
end

def card_queen
  @correct_card = true if @top_in_play_card != (@characters[5] || @characters[12] || @characters[11]) # 7 & Ace & King
end

def card_jack
  @correct_card = true if @top_in_play_card != (@characters[5] || @characters[12] || @characters[11] || @characters[10]) # 7 & Ace & King & Queen
end

def card_nine
  @correct_card = true if @top_in_play_card != (@characters[5] || @characters[12] || @characters[11] || @characters[10] || @characters[9])  # 7 & Ace & King & Queen & Jack
end

def card_eight_power
  @top_in_play_card = @in_play_pile[-2]
end

def card_eight
  @correct_card = true
  card_eight_power
end

def card_rules(card_in_question, p1_or_p2)
  check_burn(card_in_question, p1_or_p2)
  if card_in_question.include?(@characters[12]) # Ace
    card_ace
  elsif card_in_question.include?(@characters[11]) # King
    card_king
  elsif card_in_question.include?(@characters[10]) # Queen
    card_queen
  elsif card_in_question.include?(@characters[9]) # Jack
    card_jack
  elsif card_in_question.include?(@characters[8]) # 10
    @correct_card = true
    @in_play_pile = []
  elsif card_in_question.include?(@characters[7]) # 9
    card_nine
  elsif card_in_question.include?(@characters[6]) # 8
    card_eight
  elsif card_in_question.include?(@characters[5]) # 7
    @correct_card = true if @top_in_play_card != (@characters[5] || @characters[12] || @characters[11] || @characters[10] || @characters[9] || @characters[7]) # 7 & Ace & King & Queen & Jack & 9
  elsif card_in_question.include?(@characters[4]) # 6
    @correct_card = true if @top_in_play_card != (@characters[5] || @characters[12] || @characters[11] || @characters[10] || @characters[9] || @characters[7] || @characters[4]) # 7 & Ace & King & Queen & Jack & 9
  elsif card_in_question.include?(@characters[3]) # 5
    @correct_card = true if @top_in_play_card != (@characters[12] || @characters[11] || @characters[10] || @characters[9] || @characters[7] || @characters[4]) # Ace & King & Queen & Jack & 9
  elsif card_in_question.include?(@characters[2]) # 4
    @correct_card = true if @top_in_play_card != (@characters[12] || @characters[11] || @characters[10] || @characters[9] || @characters[7] || @characters[4] || @characters[3]) # Ace & King & Queen & Jack & 9 & 5
  elsif card_in_question.include?(@characters[1]) # 3
    @correct_card = true if @top_in_play_card == (@characters[0] || @characters[1] || @characters[5]) # 2, 3 & 7
  elsif card_in_question.include?(@characters[0]) # 2
    @correct_card = true
  elsif card_in_question.include?('Joker') # Joker
    @correct_card = true
    # puts "What card will your Joker be impersonating: \n"
    # joker_face = gets.chomp.capitalize
    # @top_in_play_card = joker_face
  else
    @correct_card = false
  end
end

def card_points(card_in_question)
  if card_in_question.include?("A")
    @burn = 0
    burn(card_in_question)
    @high_card = 12
  elsif card_in_question.include?("K")
    @burn = 0
    burn(card_in_question)
    @high_card = 11
  elsif card_in_question.include?("Q")
    @burn = 0
    burn(card_in_question)
    @high_card = 10
  elsif card_in_question.include?("J")
    @burn = 0
    burn(card_in_question)
    @high_card = 9
  elsif card_in_question.include?("10")
    @burn = 12
  elsif card_in_question.include?("9")
    @burn = 0
    burn(card_in_question)
    @high_card = 8
  elsif card_in_question.include?("8")
    @burn = 0
    burn(card_in_question)
    @high_card = 13
  elsif card_in_question.include?("7")
    @burn = 0
    burn(card_in_question)
    @high_card = 7
  elsif card_in_question.include?("6")
    @burn = 0
    burn(card_in_question)
    @high_card = 6
  elsif card_in_question.include?("5")
    @burn = 0
    burn(card_in_question)
    @high_card = 5
  elsif card_in_question.include?("4")
    @burn = 0
    burn(card_in_question)
    @high_card = 4
  elsif card_in_question.include?("3")
    @burn = 0
    burn(card_in_question)
    @high_card = 3
  elsif card_in_question.include?("2")
    @burn = 0
    burn(card_in_question)
    @high_card = 13
  else
    @correct_card = false
  end
end
