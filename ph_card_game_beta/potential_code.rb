
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

# def card_rules(card_in_question, p1_or_p2)
#   check_burn(card_in_question, p1_or_p2)
#   if card_in_question.include?(@characters[12]) # Ace
#     card_ace
#   elsif card_in_question.include?(@characters[11]) # King
#     card_king
#   elsif card_in_question.include?(@characters[10]) # Queen
#     card_queen
#   elsif card_in_question.include?(@characters[9]) # Jack
#     card_jack
#   elsif card_in_question.include?(@characters[8]) # 10
#     @correct_card = true
#     @in_play_pile = []
#   elsif card_in_question.include?(@characters[7]) # 9
#     card_nine
#   elsif card_in_question.include?(@characters[6]) # 8
#     card_eight
#   elsif card_in_question.include?(@characters[5]) # 7
#     @correct_card = true if @top_in_play_card != (@characters[5] || @characters[12] || @characters[11] || @characters[10] || @characters[9] || @characters[7]) # 7 & Ace & King & Queen & Jack & 9
#   elsif card_in_question.include?(@characters[4]) # 6
#     @correct_card = true if @top_in_play_card != (@characters[5] || @characters[12] || @characters[11] || @characters[10] || @characters[9] || @characters[7] || @characters[4]) # 7 & Ace & King & Queen & Jack & 9
#   elsif card_in_question.include?(@characters[3]) # 5
#     @correct_card = true if @top_in_play_card != (@characters[12] || @characters[11] || @characters[10] || @characters[9] || @characters[7] || @characters[4]) # Ace & King & Queen & Jack & 9
#   elsif card_in_question.include?(@characters[2]) # 4
#     @correct_card = true if @top_in_play_card != (@characters[12] || @characters[11] || @characters[10] || @characters[9] || @characters[7] || @characters[4] || @characters[3]) # Ace & King & Queen & Jack & 9 & 5
#   elsif card_in_question.include?(@characters[1]) # 3
#     @correct_card = true if @top_in_play_card == (@characters[0] || @characters[1] || @characters[5]) # 2, 3 & 7
#   elsif card_in_question.include?(@characters[0]) # 2
#     @correct_card = true
#   elsif card_in_question.include?('Joker') # Joker
#     @correct_card = true
#     # puts "What card will your Joker be impersonating: \n"
#     # joker_face = gets.chomp.capitalize
#     # @top_in_play_card = joker_face
#   else
#     @correct_card = false
#   end
# end

# def card_points(card_in_question)
#   if card_in_question.include?("A")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 12
#   elsif card_in_question.include?("K")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 11
#   elsif card_in_question.include?("Q")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 10
#   elsif card_in_question.include?("J")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 9
#   elsif card_in_question.include?("10")
#     @burn = 12
#   elsif card_in_question.include?("9")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 8
#   elsif card_in_question.include?("8")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 13
#   elsif card_in_question.include?("7")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 7
#   elsif card_in_question.include?("6")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 6
#   elsif card_in_question.include?("5")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 5
#   elsif card_in_question.include?("4")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 4
#   elsif card_in_question.include?("3")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 3
#   elsif card_in_question.include?("2")
#     @burn = 0
#     burn(card_in_question)
#     @high_card = 13
#   else
#     @correct_card = false
#   end
# end
