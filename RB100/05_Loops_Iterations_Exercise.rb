# Exercise
# 1. What does the each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a| # for each element in array x, .each method loops through which is then assigned to variable "|a|"
  a + 1
end # test in irb, each will always return the array in with it was called on.


# 2. Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
puts "Please imput something"

while user_input = gets.chomp
  puts user_input
  if user_input == "STOP"
  break
  end
end


# 3. Write a method that counts down to zero using recursion.

#method takes in a value
def counter(number)
  # if already at zero
  if number.zero? #Base case
  puts number
  else
    puts number
  # Countdown case:
  counter(number - 1)
  end
end

counter(0)
counter(4)
counter(8)
