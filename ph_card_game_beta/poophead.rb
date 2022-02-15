require_relative 'croupier'

def card_check(which_card)
  card_exists = false
  while card_exists == false
    @player_one[0].each do |card|
      card_exists = true if which_card == card
      # error: need an else statement or something to throw an error and loop back if the card doesn't exist
    end
  end
  which_card
end

def which_card_question
  puts "Which card will you put in the pile: \n"
  gets.chomp.upcase.gsub(/\s+/, '')
end

@in_play_pile = []

def p1_new_top_card
  top_card_choice = card_check(which_card_question)
  @in_play_pile << top_card_choice
  # @in_play_pile << @player_one[0].delete(top_card_choice)
  print "#{@in_play_pile} \n"
end

# @in_play_pile[-1] = top_card_in_play

# top trump style stats for each card rating 0-13

# iterate through characters and if in play pile -1 .. -4 include character then @burn = 100
# if @in_play_pile[-1..-4].include? #all include the same number then @burn = 100

def recommended_card_choice
  # if @player_two
  # if top_card_in_play
end

# turn = false

# def players_go
#   turn = true
# end

@correct_card = false
@top_in_play_card = @in_play_pile[-1]
@burn = 0
@high_card = 0

def ai_new_top_card
  p1_points = card_rules(@top_in_play_card)
  @player_two[0].select do |card|
    card_rules(card)
  end
  # iterate through them until correct card is true and sort by total
  # if total
  # if @total is >
  # @in_play_pile << ai_top_card_choice
end

# card_rules(@top_in_play_card) << that would show whether the latest card played
# card_rules(ai_new_top_card) << that would show whether the ai selection is eligible

def card_rules(card_in_question)
  if card_in_question.include?('A')
    @correct_card = true unless @top_in_play_card.include?(@characters[5])
  elsif card_in_question.include?("K")
    @correct_card = true if @top_in_play_card != ("7" || "A")
  elsif card_in_question.include?("Q")
    @correct_card = true if @top_in_play_card != ("7" || "A" || "K")
  elsif card_in_question.include?("J")
    @correct_card = true if @top_in_play_card != ("7" || "A" || "K" || "Q")
  elsif card_in_question.include?("10")
    @correct_card = true
    @in_play_pile = []
  elsif card_in_question.include?("9")
    @correct_card = true if @top_in_play_card != ("7" || "A" || "K" || "Q" || "J")
  elsif card_in_question.include?("8")
    @correct_card = true
  elsif card_in_question.include?("7")
    @correct_card = true if @top_in_play_card != ("A" || "K" || "Q" || "J" || "9")
  elsif card_in_question.include?("6")
    @correct_card = true if @top_in_play_card != ("A" || "K" || "Q" || "J" || "9")
  elsif card_in_question.include?("5")
    @correct_card = true if @top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6")
  elsif card_in_question.include?("4")
    @correct_card = true if @top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5")
  elsif card_in_question.include?("3")
    @correct_card = true if @top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5" || "3")
  elsif card_in_question.include?("2")
    @correct_card = true if @top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5" || "3")
  elsif card_in_question.include?("Joker")
    @correct_card = true
    puts "What card will your Joker be impersonating: \n"
    joker_face = gets.chomp.capitalize
    # @top_in_play_card = joker_face
  else
    @correct_card = false
  end
end

def burn(card_in_question)
  suit_and_character = card_in_question.split(//)
  @burn = 13 if @in_play_pile[-1..-4] == [suit_and_character[1], suit_and_character[1], suit_and_character[1]]
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
