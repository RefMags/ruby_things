# # def integer?(input)
# #   # /\A[-+]?\d+\z/ === input
# #   input.to_i.to_s == input
# # end

# def valid_number(input)
#   Float(input).to_s == input
# rescue ArgumentError
#   false
# end

# # puts "input first number: "
# # p number1 = gets.chomp

# # puts "input second number:"
# # p number2 = gets.chomp

# p valid_number("2.2")
# # p integer?("2")
# # p integer?("abc")


def get_number(input)
  puts "insert a number: "
  number = ''
  loop do
    # prompt()
    # puts "insert a number: "
    number = gets().chomp()
    break

  #   if integer?(number)
  #     break
  #   else
  #     puts "invalid number"
  #   end
  end

  number
end

loop do
  num1 = get_number('First Number: ')
  num2 = get_number('Second Number: ')
  break
end
