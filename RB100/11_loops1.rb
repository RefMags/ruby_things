# 1.

loop do
  puts 'Just keep printing....'
  break
end

# 2. Loopception

loop do
  puts 'This is the outer loop'

  loop do
    puts 'This is the inner loop'
    break # exit inner loop
  end
  break # exit outer loop
end

puts 'This is the outside all loops'

# 3.
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1 # we need to increment the iterations by 1 each time the loop iterates over the block
  break if iterations > 5 # insert a condition to the reserved word 'break'
end

# 4. code stops when user inputs 'yes'

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes' #insert the reserved word 'break' with an if condition for when the "answer == 'yes' " to break out of loop.
end

#5.  printing hello 5 times
# pseudo code

say_hello = true

while say_hello # a while loop is given parameter that evaluates as either true or false, once it becomes false the loop is not executed anymore.
  puts 'Hello!' # initially the say_hello parameter is evaluated to true then prints out to puts hello, and returns to top
  puts 'Hello!' # with the current say_hello, it evaluates say_ hello which evaluates to true and prints out the second Hello
  puts 'Hello!'
  puts 'Hello!'
  puts 'Hello!'
  say_hello = false # on the firth interation after after say_hello and this line is evaluated to false the loop breaks out of the loop
end


# refactored using the times method
while say_hello
  5.times { puts 'Hello!'}
  say_hello = false
end

# alternatively using a counter to mark the number of times the loop evaluates.
say_hello = true
count = 0 # adding a counter variable to track the number of times the loop executes

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5 # an 'if' condition to note when the countdown has reached 5 times code evaluation to break out of the loop.
end

# 6. using while loop, print 5 random numbers between 0 and 99

number = [] # local variable number representing empty array
count = 0 # initialize the count with a variable

while count < 5 # set the counter up to 5 as our parameter to iterate over the loop
  number << rand(100) # randomly pick a number in the range 0..99 using 'rand' and append that to the array of number
  count += 1  # increment the counter by 1 to iterate over the loop to select a second number and add it to the range
end

puts number # outputs each number of the array as a string output

while number.count < 5
  number << rand(100)
end

puts number

# 7. Count up
count = 1 # count should be initalized with one
until count > 10 # iterates until the condition evaluates to true
  puts count
  count += 1 # since we are incrementing to 10 then add one to the counter after each iteration
end

10.times

# 8. Print Until

numbers = [7, 9, 13, 25, 18]
count = 0
until count == numbers.size
  puts numbers[count] # put(s) outputs the string
  count += 1
end

# 9. Thats'odd

for i in 1..100
  puts i if i % 2 != 0
end

for i in 1..100
  puts i = (1..100).select {|num| num.odd? }
end


for i in 1..100
  puts i if i.odd?
end

# 10. Greet friends

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends do # for is significant in allowing us to loop over a set of elements. use friend to represent the current variable.
  print "Hello #{friend}"
end
