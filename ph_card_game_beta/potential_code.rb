
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

  # nil_entry = true
  # while nil_entry == true
  #   deal_cards
  #   if @player_one[0..2][0..2].include?(nil) && @player_two[0..2][0..2].include?(nil)
  #     deal_cards
  #   else
  #     nil_entry = false
  #   end
  # end

  # print "Cards frozen as your top cards: #{@player_one[1]} \n"
  # print "Cards frozen as AI top cards: #{@player_two[1]} \n"
  # print "Cards in your hand: #{@player_one[0]} \n"
  # print "Would you like to swap any of your top cards with your card deck? [yes/no]\n"
  # answer = gets.chomp
  # if answer == 'yes' || answer == 'y'
  #   @six_card_arr = []
  #   @player_one[0..1].each do |deck|
  #     deck[0..2].each do |card|
  #       @six_card_arr << card
  #     end
  #   end
  #   @player_one[0] = []
  #   @player_one[1] = []
  #   count = 1
  #   until count == 4
  #     print "#{@six_card_arr}\n"
  #     print "Choose your #{count}#{ordinal(count)} top card:\n"
  #     card = gets.chomp.upcase.gsub(/\s+/, '')
  #     @player_one[1] << @six_card_arr.delete(card)
  #     count += 1
  #     print "Current top cards: #{@player_one[1]} \n"
  #   end
  #   @player_one[0].push(@six_card_arr[0..2])
  # end

# def ordinal(num)
#   ending = case num % 100
#            when 11, 12, 13 then 'th'
#            else
#              case num % 10
#              when 1 then 'st'
#              when 2 then 'nd'
#              when 3 then 'rd'
#              else 'th'
#              end
#            end
# end
