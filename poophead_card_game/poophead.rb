card_deck = ["A", "A", "A", "A", 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, "J", "J", "J", "J", "Q", "Q", "Q", "Q", "K", "K", "K", "K", "Joker", "Joker"]

turn = false

def players_go
  turn = true
end

in_play_pile = []

correct_card = false

top_in_play_card = in_play_pile[-1]

def card_rules
  if card_picked == "A"
    if top_in_play_card != 7
      correct_card = true
    end
  elsif card_picked == "K"
    if top_in_play_card != (7 || "A")
      correct_card = true
    end
  elsif card_picked == "Q"
    if top_in_play_card != (7 || "A" || "K")
      correct_card = true
    end
  elsif card_picked == "J"
    if top_in_play_card != (7 || "A" || "K" || "Q")
      correct_card = true
    end
  elsif card_picked == "10"
      correct_card = true
      in_play_pile = []
  elsif card_picked == "9"
    if top_in_play_card != (7 || "A" || "K" || "Q" || "J")
      correct_card = true
    end
  elsif card_picked == "8"
      correct_card = true
  elsif card_picked == "7"
    if top_in_play_card != ("A" || "K" || "Q" || "J" || 9)
      correct_card = true
    end
  elsif card_picked == "6"
    if top_in_play_card != ("A" || "K" || "Q" || "J" || 9)
      correct_card = true
    end
  elsif card_picked == "5"
    if top_in_play_card != ("A" || "K" || "Q" || "J" || 9 || 6)
      correct_card = true
    end
    players_go
  elsif card_picked == "4"
    if top_in_play_card != ("A" || "K" || "Q" || "J" || 9 || 6 || 5)
      correct_card = true
    end
  elsif card_picked == "3"
    if top_in_play_card != ("A" || "K" || "Q" || "J" || 9 || 6 || 5 || 3)
      correct_card = true
    end
  elsif card_picked == "Joker"
    correct_card = true
    puts "What card will your Joker be impersonating: \n"
    joker_face = gets.chomp.uppercase
    card_picked = joker_face
  end
else
  correct_card = true
end
