# card = 'H3'

# split_card = card.split(//)

# @array = %w[5 12 3 56 4 2 17]

# print split_card

# @ace_array = [@array[0], @array[1], @array[2]]

# @ace_array.each do |card|
#   print "defo works" if split_card.include?(card)
# end

# count = -2
# until count == -5
#   count -= 1
#   puts count
# end

cards = %w[H7 S4 DA S8 S3 DK SJ CQ]

# def card_sort(player)
#   print "#{player} \n"
#   print "#{player.map(&:reverse!)} \n"
#   print "#{player.sort} \n"
# end

def card_new_alphabet(array)
  # array.each { |card| card.split(//) }
  array.each do |card|
    if card.include?("J")
      array[-1] << card
    end
  end
end

# def letter_method(array)
#   array
#   characters = %w[J Q K A]
#   characters.each do |char|
#     card_new_alphabet(array, char)
#   end
# end

def card_sort_letter_order(player)
  player.each(&:reverse!)
  player.sort
end

def card_sort_num_order(player)
  player.each(&:reverse!)
  player.sort_by
end

def card_sort(array)
  card_sort_letter_order(array).each(&:reverse!)
  # card_sort_num_order(array).each(&:reverse!)
  # card_new_alphabet(array)
end

# print card_new_alphabet(cards)
print card_sort(cards)
# print card_alphabet_bytes(cards)
# print card_new_alphabet(cards)
