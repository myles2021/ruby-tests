require_relative "croupier"

puts 'Welcome to the card game: "Poophead"!'
sleep(1)
puts "Shuffling the deck..."
sleep(1)
players_question = true

while players_question == true
  puts "How many players are playing? [1] [2] [3] [4]"
  amount_of_players = gets.chomp.to_i
  if amount_of_players == 1
    one_player = [
      player1_top_cards = [],
      player1_bottom_cards = []
    ]
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

print four_players

# running = true

# 3.times do
#   player4_bottom_cards.push(pick_player_bottom_cards)
# end
