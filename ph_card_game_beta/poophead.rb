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
  gets.chomp.capitalize
end

@in_play_pile = []

def new_top_card
  top_card_choice = card_check(which_card_question)
  @in_play_pile << top_card_choice
  # @in_play_pile << @player_one[0].delete(top_card_choice)
  print "#{@in_play_pile} \n"
end

# turn = false

# def players_go
#   turn = true
# end

correct_card = false

top_in_play_card = @in_play_pile[-1]

def card_rules
  if card_picked == "A"
    if top_in_play_card != "7"
      correct_card = true
    end
  elsif card_picked == "K"
    if top_in_play_card != ("7" || "A")
      correct_card = true
    end
  elsif card_picked == "Q"
    if top_in_play_card != ("7" || "A" || "K")
      correct_card = true
    end
  elsif card_picked == "J"
    if top_in_play_card != ("7" || "A" || "K" || "Q")
      correct_card = true
    end
  elsif card_picked == "10"
      correct_card = true
      in_play_pile = []
  elsif card_picked == "9"
    if top_in_play_card != ("7" || "A" || "K" || "Q" || "J")
      correct_card = true
    end
  elsif card_picked == "8"
      correct_card = true
  elsif card_picked == "7"
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9")
      correct_card = true
    end
  elsif card_picked == "6"
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9")
      correct_card = true
    end
  elsif card_picked == "5"
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6")
      correct_card = true
    end
    players_go
  elsif card_picked == "4"
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5")
      correct_card = true
    end
  elsif card_picked == "3"
    if top_in_play_card != ("A" || "K" || "Q" || "J" || "9" || "6" || "5" || "3")
      correct_card = true
    end
  elsif card_picked == "Joker"
    correct_card = true
    puts "What card will your Joker be impersonating: \n"
    joker_face = gets.chomp.capitalize
    # card_picked = joker_face
  else
    correct_card = true
  end
end
