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

def ai_new_top_card
  ai_top_card_choice =
  @in_play_pile << ai_top_card_choice
end

# @in_play_pile[-1] = top_card_in_play

# top trump style stats for each card rating 0-13


# iterate through characters and if in play pile -1 .. -4 include character then burn = 100
# if @in_play_pile[-1..-4].include? #all include the same number then burn = 100

def recommended_card_choice
  # if @player_two
  # if top_card_in_play
end

# turn = false

# def players_go
#   turn = true
# end

correct_card = false

top_in_play_card = @in_play_pile[-1]
burn = 0
high_card = 0
best = 0

def card_rules
  if card_picked.include?("A")
    if top_in_play_card != "7"
      correct_card = true
    end
    burn = 0
    high_card = 12
    best = 12
  elsif card_picked.include?("K")
    if top_in_play_card != ("7" || "A")
      correct_card = true
    end
    burn = 0
    high_card = 11
    best = 11
  elsif card_picked.include?("Q")
    if top_in_play_card != ("7" || "A" || "K")
      correct_card = true
    end
    burn = 0
    high_card = 10
    best = 10
  elsif card_picked.include?("J")
    if top_in_play_card != ("7" || "A" || "K" || "Q")
      correct_card = true
    end
    burn = 0
    high_card = 9
    best = 9
  elsif card_picked.include?("10")
      burn = 13
      best = 13
      high_card = 13
      correct_card = true
      in_play_pile = []
  elsif card_picked.include?("9")
    if top_in_play_card != ("7" || "A" || "K" || "Q" || "J")
      correct_card = true
    end
    burn = 0
    high_card = 8
    best = 8
  elsif card_picked.include?("8")
      correct_card = true
    burn = 0
    high_card = 13
    best = 13
  elsif card_picked.include?("7")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9")
      correct_card = true
    end
    burn = 0
    high_card = 7
    best = 7
  elsif card_picked.include?("6")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9")
      correct_card = true
    end
    burn = 0
    high_card = 6
    best = 6
  elsif card_picked.include?("5")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6")
      correct_card = true
    end
    burn = 0
    high_card = 5
    best = 5
  elsif card_picked.include?("4")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5")
      correct_card = true
    end
    burn = 0
    high_card = 4
    best = 4
  elsif card_picked.include?("3")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5" || "3")
      correct_card = true
    end
    burn = 0
    high_card = 3
    best = 3
  elsif card_picked.include?("2")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5" || "3")
      correct_card = true
    end
    burn = 0
    high_card = 13
    best = 13
  elsif card_picked.include?("Joker")
    correct_card = true
    puts "What card will your Joker be impersonating: \n"
    joker_face = gets.chomp.capitalize
    # card_picked = joker_face
  else
    correct_card = true
  end
end
