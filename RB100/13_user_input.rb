# 1. Repeat after me; program asks the user to type something, and the program outputs it.

puts "What on your mind?"
puts answer = gets.chomp
# puts answer

# 2. Your age in months; write a program that asks the user for their age in years and converts that age to months

puts "What is you age in years?"
age = gets.chomp.to_i
puts age * 12

# 3. Print Something(1) ; a program that asks the user whether they want the program to print "something", then print it if the user say y otherwise nothing.

puts "Do you want me to print something? (y/n)"
answer = gets.chomp
# if answer == 'y'
#   puts "something"
# end

puts 'something' if answer == 'y' #simplify into one liner.

# 4. Print something(Part2)
# following #3, modify the program to persistently ask the question until an appropriate answer (y/n) is given
# the program should not be case sensitive

loop do
  puts "Do you want me to print something? (y/n)"
  answer = gets.chomp
  if answer.downcase == 'y' #checks answer if y to type something. ".downcase" method eliminates case sensitivity of the program
    puts "Something"
    break
  elsif answer.downcase == "n"
    puts " "
    break
  else
    puts "Invalid input! please enter y or n"  # continually asks the user for input if it does not satisfy 'y/n'.
  end
end

# 5. write a program that prints 'LS is the best! repeatedly until a certain number of lines have been printed.
# the program should obtain the number of lines from the user and should insist that atleast 3 lines are printed.

loop do
  puts "How many output lines do you want? Enter a number >= 3"
  answer = gets.chomp.to_i

  if answer >= 3
    answer.times do # use the times method to print "LS is the best!"
      puts "Launch School is the best!"
    end
    break # break out after the do/end method is completed printing the required output
  else
    puts "Thats not enough lines." # if the answer does not meet the requirements of the condition ">= 3" then continue asking the user for input
  end

end

# 6. Passwords
# write a program that prompts user for password and display a welcome message after.
# Condition: if user inputs correct password display the welcome message, the password is a string defined as a constant in the program.
# keeping asking for password until user enters a correct password.

loop do
  puts "Please input your password: "
  answer = gets.chomp

  if answer == "Secret" # use conditional if and set the constant of the answer to "Secret"
   puts "Welcome"
   break # break once the answer is satisfied
  else
    puts "Invalid password!" #otherwise continually ask for password if the constant is not satisfied.
  end
end

# 7. Username and Password
# Modify #6 to request a user name then validate them,
# a generic error message if one or both are incorrrect; error should not tell which item is incorrect.

USERNAME = "admin"
PASSWORD = "Secret"

loop do
  puts "Please input your user name: "
  user_name = gets.chomp

  puts "Please input your password: "
  password = gets.chomp


  if user_name != USERNAME && password != PASSWORD
    puts "Authorization failed"
  else
    puts "Welcome"
    break
  end
end


# alternatively

USERNAME = "admin"
PASSWORD = "Secret"

loop do
  puts "Please input your user name: "
  user_name = gets.chomp

  puts "Please input your password: "
  password = gets.chomp


  break if user_name == USERNAME && password == PASSWORD # one liner for entry of username and password
  puts "Authorization failed"
end

puts "Welcome!" # print the Welcome! message if valid enteries have been input

# 8. Dividing numbers

# ask user to enter two integers, then print the results of dividing the first by the second
# the second must not be 0

# First attempt without using the suggested def/end method

loop do
  puts "Please input a number: "
  numerator = gets.chomp.to_i
  puts "Invalid input! please insert an integer:" if numerator.is_a?String # continually request the user to input if a string is input.

  puts "Please input a second number: "
  denominator = gets.chomp.to_i
  puts "Invalid input! please insert an integer:" if denominator.is_a?String

  puts numerator / denominator if denominator != 0 # before perfoming the operation insert the condition that the denominator should not be "0" before dividing.
  break

end

# Second attempt trying with the def/end method

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts "Puts enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input. Only integers are allowed. "

end

denominator = nil
loop do
  puts "Please enter denominator:"
  denominator = gets.chomp
  if denominator == '0'
    puts "Invalid input. A denominator of 0 is"
  else
    break if valid_number?(denominator)
    puts "Invalid input. Only integers are allowed. "
  end
end

result = numerator.to_i / denominator.to_i

puts "#{numerator} / #{denominator} is #{result}"

# 9. from Q5; only quit the program when q is input

loop do
  puts "How many output lines do you want? Enter a number >= 3"
  answer = gets.chomp # reverted the answer to gets.chomp
  break if answer.downcase == 'q' # use the downcase method to eliminate case sensitivity when 'q'is entered.
  number_of_lines = answer.to_i # reassign the answer that is converted to an integer to a new variable that indicates the number of lines to be printed.


  if number_of_lines >= 3
    number_of_lines.times do # use the times method to print "LS is the best!"
      puts "Launch School is the best!"
    end
    # break # break out after the do/end method is completed printing the required output
  else
    puts "Thats not enough lines." # if the answer does not meet the requirements of the condition ">= 3" then continue asking the user for input
  end
end


# 10. Opposites attract

# program should request two integers from the user, adds them together and display the results.
# Insist that one of the integers be positive and one negative,order in which numbers are entered does not matter

loop do
  puts "Please input a first number: "
  first_number = gets.chomp.to_i
  puts "Invalid input! please insert an integer:" if first_number.is_a?String # continually request the user to input if a string is input.
  puts "Invalid input! Only integers are allowed:" if first_number == 0 # continually request the user to input if a number is 0.


  puts "Please input a second number: "
  second_number = gets.chomp.to_i
  puts "Invalid input! please insert an integer:" if second_number.is_a?String
  puts "Invalid input! Only integers are allowed:" if second_number == 0

  if first_number < 0 || second_number < 0
    puts first_number + second_number # before perfoming the operation insert the condition either first or second number is a negative.
    break
  end

end
