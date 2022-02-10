require_relative 'poophead'

def pick_player_bottom_cards
  new_bottom_card = rand(card_deck)
  index_of_new_bottom_card = new_bottom_card.index
  card_deck.delete_at(index_of_new_bottom_card)
end

def pick_player_top_cards
  new_top_card = rand(card_deck)
  card_deck.delete(new_top_card)
end
