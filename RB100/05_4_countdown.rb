# Ex. 1 countdown; the program should count doen from any number given by the user and print to the screan each number as it counts
puts "please insert your lucky number"
x = gets.chomp.to_i

while x >= 0 # the program will evaluate x given, then continue to evaluate the new "x" given after line 7 is evaluated.
  puts x # once the value of x is no longer ">= 0" the loop is exited and continues with the rest of the program
  x = x - 1
end
puts "Done!"

# refractoring the Ex 1 loop

x = gets.chomp.to_i
while x >= 0
  puts x
  x -= 1 # <- refractored line
end
puts "Done!"

# Ex 3. while does not have its own scope compared to loop method

x = 0
while x < 5
  y = x * x
  x += 1
end

puts y # "y" is initialized in the body of the while loop to get 16
