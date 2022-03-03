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
  characters = %w[J Q K A]
  characters.each do |char|
    array.each do |card|
      array.sort_by { |char_card| char_card[1].bytes } if card.include?(char)
    end
  end
end

def card_alphabet_bytes(array)
  # array.each do |card|
  #   card.sort_by do |char|
  #     char[1].bytes
  #   end
  # end
  # { |char_card| char_card[1].bytes }
  array.sort_by { |char_card| print char_card[1].bytes }
end

def card_sort_letter_order(player)
  player.each(&:reverse!)
  player.sort.reverse!
end

def card_sort_num_order(player)
  player.each(&:reverse!)
  player.sort_by
end

def card_sort(array)
  card_sort_letter_order(array).each(&:reverse!)
  card_sort_num_order(array).each(&:reverse!)
  # card_new_alphabet(array)
end

# print card_new_alphabet(cards)
# print card_sort(cards)
print card_alphabet_bytes(cards)
