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

def ai_new_top_card
  points = card_rules(top_in_play_card)
  # if total is >
  ai_top_card_choice =
  best_choice = false
  @in_play_pile << ai_top_card_choice
end


def card_rules(top_in_play_card)
  if top_in_play_card.include?("A")
    correct_card = true if top_in_play_card != "7"
    unless @in_play_pile[-1..-4] == ["A", "A", "A"]
      burn = 0
    else
      burn = 13
    end
    high_card = 12
    best = 12
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("K")
    correct_card = true if top_in_play_card != ("7" || "A")
    burn = 0
    high_card = 11
    best = 11
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("Q")
    if top_in_play_card != ("7" || "A" || "K")
      correct_card = true
    end
    burn = 0
    high_card = 10
    best = 10
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("J")
    if top_in_play_card != ("7" || "A" || "K" || "Q")
      correct_card = true
    end
    burn = 0
    high_card = 9
    best = 9
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("10")
    burn = 13
    best = 13
    high_card = 13
    total = (burn + high_card + best)
    correct_card = true
    in_play_pile = []
  elsif top_in_play_card.include?("9")
    if top_in_play_card != ("7" || "A" || "K" || "Q" || "J")
      correct_card = true
    end
    burn = 0
    high_card = 8
    best = 8
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("8")
    correct_card = true
    burn = 0
    high_card = 13
    best = 13
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("7")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9")
      correct_card = true
    end
    burn = 0
    high_card = 7
    best = 7
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("6")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9")
      correct_card = true
    end
    burn = 0
    high_card = 6
    best = 6
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("5")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6")
      correct_card = true
    end
    burn = 0
    high_card = 5
    best = 5
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("4")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5")
      correct_card = true
    end
    burn = 0
    high_card = 4
    best = 4
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("3")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5" || "3")
      correct_card = true
    end
    burn = 0
    high_card = 3
    best = 3
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("2")
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5" || "3")
      correct_card = true
    end
    burn = 0
    high_card = 13
    best = 13
    total = (burn + high_card + best)
  elsif top_in_play_card.include?("Joker")
    correct_card = true
    puts "What card will your Joker be impersonating: \n"
    joker_face = gets.chomp.capitalize
    # top_in_play_card = joker_face
  else
    correct_card = false
  end
end
