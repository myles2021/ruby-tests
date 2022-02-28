require_relative 'poophead'

def card_ace
  ace_array = [@characters[5]] # 7
  tc_split
  ace_array.each do |aa_card|
    p1_new_top_card_potential unless @tc_split.include?(aa_card)
  end
end

def card_king
  king_array = [@characters[5], @characters[12]] # 7 A
  tc_split
  king_array.each do |ka_card|
    p1_new_top_card_potential unless @tc_split.include?(ka_card)
  end
end

def card_queen
  queen_array = [@characters[5], @characters[12], @characters[11]] # 7 A K
  tc_split
  queen_array.each do |qa_card|
    p1_new_top_card_potential unless @tc_split.include?(qa_card)
  end
end

def card_jack
  jack_array = [@characters[5], @characters[12], @characters[11], @characters[10]] # 7 A K Q
  tc_split
  jack_array.each do |ja_card|
    p1_new_top_card_potential unless @tc_split.include?(ja_card)
  end
end

def card_nine
  nine_array = [@characters[5], @characters[12], @characters[11], @characters[10], @characters[9]] # 7 A K Q J
  tc_split
  nine_array.each do |na_card|
    p1_new_top_card_potential unless @tc_split.include?(na_card)
  end
end

def card_eight_power
  tc_split
  count = -2
  if @tc_split.include?('8')
    while @tc_split.include?('8')
      tc_split
      count -= 1
      @top_card_in_play = @in_play_pile[count]
    end
  else
    @top_card_in_play = @in_play_pile[count]
  end
end

def card_eight
  p1_new_top_card_potential
  card_eight_power
end

def card_seven
  seven_array = [@characters[12], @characters[11], @characters[10], @characters[9], @characters[7]] # A K Q J 9
  tc_split
  seven_array.each do |sa_card|
    p1_new_top_card_potential unless @tc_split.include?(sa_card)
  end
end

def card_six
  six_array = [@characters[12], @characters[11], @characters[10], @characters[9], @characters[7]] # A K Q J 9
  tc_split
  six_array.each do |sxa_card|
    p1_new_top_card_potential unless @tc_split.include?(sxa_card)
  end
end

def card_five
  five_array = [@characters[0], @characters[1], @characters[2], @characters[3], @characters[5]] # 2 3 4 5 7
  tc_split
  five_array.each do |fa_card|
    p1_new_top_card_potential if @tc_split.include?(fa_card)
  end
end

def card_four
  four_array = [@characters[0], @characters[1], @characters[2], @characters[5]] # 2 3 4 7
  tc_split
  four_array.each do |foa_card|
    p1_new_top_card_potential if @tc_split.include?(foa_card)
  end
end

def card_three
  three_array = [@characters[0], @characters[1], @characters[5]] # 2 3 7
  tc_split
  three_array.each do |ta_card|
    p1_new_top_card_potential if @tc_split.include?(ta_card)
  end
end

def card_rules(card_in_question, p1_or_p2)
  check_burn(card_in_question, p1_or_p2) unless card_in_question.include?('Joker1') || card_in_question.include?('Joker2')
  ciq_arr = card_in_question.split(//)
  if ciq_arr.include?(@characters[12]) # Ace
    card_ace
  elsif ciq_arr.include?(@characters[11]) # King
    card_king
  elsif ciq_arr.include?(@characters[10]) # Queen
    card_queen
  elsif ciq_arr.include?(@characters[9]) # Jack
    card_jack
  elsif ciq_arr.include?(@characters[8]) # 10
    p1_new_top_card_potential
    @in_play_pile = []
  elsif ciq_arr.include?(@characters[7]) # 9
    card_nine
  elsif ciq_arr.include?(@characters[6]) # 8
    card_eight
  elsif ciq_arr.include?(@characters[5]) # 7
    card_seven
  elsif ciq_arr.include?(@characters[4]) # 6
    card_six
  elsif ciq_arr.include?(@characters[3]) # 5
    card_five
  elsif ciq_arr.include?(@characters[2]) # 4
    card_four
  elsif ciq_arr.include?(@characters[1]) # 3
    card_three
  elsif ciq_arr.include?(@characters[0]) # 2
    p1_new_top_card_potential
  elsif card_in_question.include?('Joker') # Joker
    p1_new_top_card_potential
    # puts "What card will your Joker be impersonating: \n"
    # joker_face = gets.chomp.capitalize
    # @tc_split = joker_face
  else
    @correct_card = false
  end
end
