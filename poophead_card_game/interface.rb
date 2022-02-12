require_relative "croupier"
require_relative "poophead"

puts 'Welcome to the card game: "Poophead"!'
sleep(1)
puts "Shuffling the deck..."
sleep(1)

card_deck = ["2", "2", "2", "2", "3", "3", "3", "3", "4", "4", "4", "4", "5", "5", "5", "5", "6", "6", "6", "6", "7", "7", "7", "7", "8", "8", "8", "8", "9", "9", "9", "9", "10", "10", "10", "10", "J", "J", "J", "J", "Q", "Q", "Q", "Q", "K", "K", "K", "K", "A", "A", "A", "A", "Joker", "Joker"]

def pick_player_bottom_cards(new_bottom_card)
  new_bottom_card = rand(card_deck)
  index_of_new_bottom_card = new_bottom_card.index
  card_deck.delete_at(index_of_new_bottom_card)
end

def pick_player_top_cards
  new_top_card = card_deck[rand(0..53)]
  card_deck.delete(new_top_card)
end

players_question = true

while players_question == true
  puts "How many players are playing? [1] [2] [3] [4]"
  amount_of_players = gets.chomp.to_i

  if amount_of_players == 1
    one_player = [
      player1_top_cards = [],
      player1_bottom_cards = []
    ]
    3.times do
      one_player[1].push(card_deck[rand(0..53)])
    end
    6.times do
      one_player[0].push(card_deck[rand(0..53)])
    end
    players_question = false
  elsif amount_of_players == 2
    two_players = [
      player1_top_cards = [],
      player1_bottom_cards = [],
      player2_top_cards = [],
      player2_bottom_cards = []
    ]
    players_question = false
  elsif amount_of_players == 3
    three_players = [
      player1_top_cards = [],
      player1_bottom_cards = [],
      player2_top_cards = [],
      player2_bottom_cards = [],
      player3_top_cards = [],
      player3_bottom_cards = []
    ]
    players_question = false
  elsif amount_of_players == 4
    four_players = [
      player1_top_cards = [],
      player1_bottom_cards = [],
      player2_top_cards = [],
      player2_bottom_cards = [],
      player3_top_cards = [],
      player3_bottom_cards = [],
      player4_top_cards = [],
      player4_bottom_cards = []
    ]
    players_question = false
  else
    puts "Please only select 1, 2, 3, or 4 players."
    players_question = true
  end
end



print one_player

# running = true

# 3.times do
#   player4_bottom_cards.push(pick_player_bottom_cards)
# end
