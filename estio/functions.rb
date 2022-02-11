def sum(num1, operation, num2)
  if operation == 'x' || operation == '*'
      num1 * num2
  elsif operation == '+'
      num1 + num2
  elsif operation == '%' || operation == '/'
      num1.to_f / num2
  elsif operation == '-'
      num1 - num2
  else
    puts "Operation doesn't exist..."
  end
end

calculator = true

while calculator == true
  puts "What is the first number:\n"
  number1 = gets.chomp.to_i
  puts "What is the operator:\n"
  operator = gets.chomp
  puts "What is the second number:\n"
  number2 = gets.chomp.to_i
  puts "#{number1} #{operator} #{number2} = #{sum(number1, operator, number2)}"
  puts "Would you like to make another calculation? [y/n]"
  answer = gets.chomp
  if answer == 'y' || answer == 'yes'
    calculator = true
  else
    calculator = false
  end
end


# def add(num1, num2)
#   num1 + num2
# end

# def subtract(num1, num2)
# 	num1 - num2
# end

# def multiply(num1, num2)
# 	num1 * num2
# end

# def divide(num1, num2)
# 	num1.to_f / num2
# end

# puts add(3, 6)
# puts subtract(3, 6)
# puts multiply(3, 6)
# puts divide(3, 6)
