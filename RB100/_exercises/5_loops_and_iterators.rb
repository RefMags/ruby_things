# What does each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# the array in which we invoked each returns the original array

# Write a while loop that takes inputs from user, performs an action and only stops when the user types "STOP". Each loop can get info from the user.

x = ' '

while x != "STOP" do
  puts "What is favorite animal?"
  answer = gets.chomp
  puts "Would you like the next question?"
  x = gets.chomp
end

# write a method that counts down to zero using recursion

def zero_counter(number)
  if number <= 0
    puts number
  else
    puts number
    zero_counter(number - 1)
  end
end
