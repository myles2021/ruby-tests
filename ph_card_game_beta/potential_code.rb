
# sorting what top cards and hand cards you want to play with
print "#{player_one[0]} \n"
puts "Choose the first card to put as one of your top cards: \n"
first_top_card = gets.chomp
player_one[1] << player_one[0].delete(first_top_card)
puts "Choose the second card to put as one of your top cards: \n"
second_top_card = gets.chomp
player_one[1] << player_one[0].delete(second_top_card)
puts "Choose the third card to put as one of your top cards: \n"
third_top_card = gets.chomp
player_one[1] << player_one[0].delete(third_top_card)
print "#{player_one[1]} \n"
print "#{player_one[2]} \n"
