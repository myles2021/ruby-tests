def spin_words(sentence)
  word_arr = sentence.split(' ')
  word_arr.map! do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  word_arr.join(' ')
end

print spin_words('Rake it until you make it')
