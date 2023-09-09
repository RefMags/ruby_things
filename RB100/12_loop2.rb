# 1. Even or odd?

count = 1

loop do
  if count.odd? # insert and if conditional statement to mark whether the number is odd or even.
  puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  count += 1
  break if count > 5 # insert a reserved word break to prevent infinite looping.
end

# 2. Catch the number : modify code so that loop stops if number is equal to or between 0 and 10

loop do
  number = rand(100)
  puts number
  break number.between?(1,10) # use a between? method with the reserved word break to break out of the loop
end

# 3. Conditional loop

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts " The loop was processed!"
    break
  end
else
  puts "the loop wasn't processed"
end

# 4. Get the sum

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4 # test the number given in the answer
    puts "Thats's correct!"
    break # use reserved word "break" when 4 is given
  else
    puts " Keep trying ..." # infinitely keep asking for the correct answer
  end
end

# 5.
numbers = []
loop do
  puts 'Enter any number: '
  input = gets.chomp.to_i
  numbers << input
  # numbers.push(input) #alternatively input this push method rather than using the shovel
  break if numbers.size == 5
end
puts numbers

# 6. Empty the Array

names = ['Sallly', 'Joe', 'Lisa', 'Henry']

loop do
  # iterate over the array index
  puts names.pop
  break if names.empty?
end


# 7. Stop counting

5.times do |index|
  puts index if index < 3
end

# alternatively use break
5.times do |index|
  puts index
  break if index == 2
end

# 8. Only Even; using next, modify the code so that it only prints positive integers that are even

number = 0

until number == 10
  number += 1
  next if number.even? # put an if conditional to test the eveness of the value
    puts number # put(s) the number
  end
end

# 9. First to five
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  break
end



# 10. Greetings; Use while loop to print "Hello!" twice

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings
  2.times {puts greeting}
  number_of_greetings = false # break out of the while loop after 2 prints
end
