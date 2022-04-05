require_relative 'poophead'

def card_ace
  ace_array = [@characters[5]] # 7
  tc_split
  ace_array.each do |aa_card|
    p1_new_top_card_potential unless @tc_split.include?(aa_card)
  end
end

def card_rules(card_in_question)
  ciq_arr = card_in_question.split(//)
  if ciq_arr.include?(@characters[12]) # Ace
    card_ace
  end
end

card_rules('H5')
