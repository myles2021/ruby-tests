# add string to convert multi-line code into one line and replace the line seperator with the \n

string = ''

puts '----------'
puts '          '
puts '          '
puts "printf '#{string.gsub(/\R+/, '\n')}' >> "
puts '          '
puts '          '
puts '----------'
