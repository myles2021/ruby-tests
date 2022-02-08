require_relative "croupier"

puts "Welcome to black jack!"
sleep(1)
puts "Shuffling the deck..."
sleep(1)

bank_score = pick_bank_score

running = true

player_cards = []
player_cards.push(pick_player_card)
player_cards.push(pick_player_card)
player_score = player_cards.sum

while running == true
  puts "All done, here are your cards: \n#{player_cards}"
  puts state_of_the_game(player_score, bank_score)
  puts "Would you like to twist or stick?"
  twist_or_stick = gets.chomp
  if twist_or_stick == "twist"
    player_cards.push(pick_player_card)
    puts player_cards
    player_score = player_cards.sum
    running = player_score < 21
  else
    running = false
  end
end

puts state_of_the_game(player_score, bank_score)
puts end_game_message(player_score, bank_score)
