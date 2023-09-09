# 1. Unpredictable weather (Part 1)
sun = ['visible', 'hidden'].sample
# puts sun
# puts sun == 'visible'
if sun == 'visible'
 puts 'the sun is so bright'
end
# Note: "The sun is so bright" is printed when the randome 'sample' method evaluates to true, otherwise nothing is printed when it evaluates to hidden.


# 2. Unpredictable weather (Part 2)
sun = ['visible', 'hidden'].sample
# puts sun # use this to test what the sun output

unless sun == 'visible' # the unless condition is the opposite of 'if' statement, when the value is false then the expression is executed, that is [if value is true for visible sun, then the false(hidden) statement is executed]
  puts "The clouds are blocking the sun!"
end

# 3. Unpredictable weather (Part 3)

sun = ['visible', 'hidden'].sample
puts sun
puts "The clouds are blocking the sun!" unless sun == 'visible'
puts 'the sun is so bright' if sun == 'visible'

# 4. True of false

boolean = [true, false].sample
# ternary : a way to write a compact if/else expression in one line.
if boolean == true
  puts "I'm true!"
else
  puts "I'm false"
end

boolean = [true, false].sample
# ternary : a way to write a compact if/else expression in one line.
# if boolean == true
#   puts "I'm true!"
# else
#   puts "I'm false"
# end

puts (boolean ? "I'm true!" : "I'm false")

# 5. Truthy Number

number = 7

if number
  puts "My favorite number is #{number}." # the code exits here as the the variable is already assigned the number, 7. truthy for the number given to the variable 7
else
  puts "I don't have a favorite number."
end

# Prints : My favorite number is 7.


# 6. Spotlight (Part 1)

spotlight = ['green', 'yellow', 'red'].sample

case spotlight
when 'green' # use the reserved word "when" in case statement
  puts "Go!"
when 'yellow'
  puts "slow down"
else
  puts "Stop!"
end

# 7. Spotlight (Part 2)
# convert Part 1 to is statement
spotlight = ['green', 'yellow', 'red'].sample

if spotlight == 'green'
    puts "Go!"
elsif spotlight == 'yellow'
  puts "slow down"
else
  puts "Stop!"
end

# 8. Sleep Alert
# write if statement
# assign the return value of the if statement to a variable and print the variable

status = ['awake', 'tired'].sample

alert =  if status == 'awake'
              puts "Be productive!"
            else
              puts "Go to sleep!"
            end
puts alert

# 9. cool numbers
number = rand(10)

if number == 5 # fix the '= literal' to a conditional statement ==
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

# 10. Spotlight Part 3

case stoplight
when 'green'  then puts 'Go!' # use reserved word then
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end
