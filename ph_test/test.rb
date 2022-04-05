@p1_cards = ['H5', 'S4', 'DA']
@ai_cards = ['H3', 'C6', 'D5']
@in_play_pile = ['D4', 'D3', 'H3', 'S2']
@card_deck = ['H7', 'S7', 'S3', 'SA']

top_card = @in_play_pile[0]
best_ai_card = @ai_cards[0]
best_p1_card = @p1_cards[0]

def split_card(ciq)
  ciq.split(//)
end

tc_arr = split_card(top_card)
bai_arr = split_card(best_ai_card)
bp1_arr = split_card(best_p1_card)

@four_yes_arr = ['4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def ai_new_card
  @in_play_pile << @ai_cards.delete_at(0)
  @ai_cards << @card_deck.delete_at(0)
  print "#{@in_play_pile.reverse} \n"
end

def new_inplay_card_approval(tc_arr, player_c_arr)
  if tc_arr[1].include?('4')
    @four_yes_arr.each do |card_check|
      if player_c_arr[1].include?(card_check)
        ai_new_card
      else
        puts "sorry no"
      end
    end
  end
end

new_inplay_card_approval(tc_arr, bai_arr)

# count hand deck and loop that many times to check whether element 0 can go onto the pile and if not then move it to -1 element
