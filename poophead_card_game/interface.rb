require_relative "croupier"
require_relative "poophead"

puts 'Welcome to the card game: "Poophead"!'
sleep(1)
puts "Shuffling the deck..."
sleep(1)

card_deck = ["2", "2", "2", "2", "3", "3", "3", "3", "4", "4", "4", "4", "5", "5", "5", "5", "6", "6", "6", "6", "7", "7", "7", "7", "8", "8", "8", "8", "9", "9", "9", "9", "10", "10", "10", "10", "J", "J", "J", "J", "Q", "Q", "Q", "Q", "K", "K", "K", "K", "A", "A", "A", "A", "Joker", "Joker"]

players_question = true

while players_question == true
  puts "How many players are playing? [1] [2] [3] [4]"
  amount_of_players = gets.chomp.to_i

  if amount_of_players == 1
    one_player = [
      player1_top_cards = [],
      player1_bottom_cards = []
    ]
    6.times do
      count = card_deck.count
      one_player[0] << card_deck.delete_at(rand(0..count))
    end
    3.times do
      count = card_deck.count
      one_player[1] << card_deck.delete_at(rand(0..count))
    end
    players_question = false
  elsif amount_of_players == 2
    two_players = [
      player1_top_cards = [],
      player1_bottom_cards = [],
      player2_top_cards = [],
      player2_bottom_cards = []
    ]
    6.times do
      count = card_deck.count
      two_players[0] << card_deck.delete_at(rand(0..count))
      two_players[2] << card_deck.delete_at(rand(0..count))
    end
    3.times do
      count = card_deck.count
      two_players[1] << card_deck.delete_at(rand(0..count))
      two_players[3] << card_deck.delete_at(rand(0..count))
    end
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
    6.times do
      count = card_deck.count
      three_players[0] << card_deck.delete_at(rand(0..count))
      three_players[2] << card_deck.delete_at(rand(0..count))
      three_players[4] << card_deck.delete_at(rand(0..count))
    end
    3.times do
      count = card_deck.count
      three_players[1] << card_deck.delete_at(rand(0..count))
      three_players[3] << card_deck.delete_at(rand(0..count))
      three_players[5] << card_deck.delete_at(rand(0..count))
    end
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
    6.times do
      count = card_deck.count
      four_players[0] << card_deck.delete_at(rand(0..count))
      four_players[2] << card_deck.delete_at(rand(0..count))
      four_players[4] << card_deck.delete_at(rand(0..count))
      four_players[6] << card_deck.delete_at(rand(0..count))
    end
    3.times do
      count = card_deck.count
      four_players[1] << card_deck.delete_at(rand(0..count))
      four_players[3] << card_deck.delete_at(rand(0..count))
      four_players[5] << card_deck.delete_at(rand(0..count))
      four_players[7] << card_deck.delete_at(rand(0..count))
    end
    players_question = false
  else
    puts "Please only select 1, 2, 3, or 4 players."
    players_question = true
  end
end

print "#{one_player} \n"
print "#{two_players} \n"
print "#{three_players} \n"
print "#{four_players} \n"
print card_deck

running = true

while running == true
  if amount_of_players == 1
    play
  elsif amount_of_players == 2
  elsif amount_of_players == 3
  elsif amount_of_players == 4
  else
  end
end
