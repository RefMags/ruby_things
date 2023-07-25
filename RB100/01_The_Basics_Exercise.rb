#1.Add two strings together that, when concatenated, return your first and last name as your full name in one string.
#concatenate
  #assign names to a variable
  first_name = 'Thabo'
  last_name = 'Pule'
  puts first_name + ' ' + last_name
#interpolation solution
  first_name = 'Thabo'
  last_name = 'Pule'
  puts "#{first_name} #{last_name}"

#2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 100 / 10
ones = 4936 % 10


puts "thousands: #{thousands}"
puts "hundreds: #{hundreds}"
puts "tens: #{tens}"
puts "ones: #{ones}"

#3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

movies = {  :the_goodfather_II => 1974,
            :mystic_river => 2004,
            :silver_linings => 2013,
            :gladiator => 2001,
            :the_elephant_man => 1981 }

puts movies[:the_goodfather_II]
puts movies[:mystic_river]
puts movies[:silver_linings]
puts movies[:gladiator]
puts movies[:the_elephant_man]

#4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

movies = [1974,2004,2013,2001,1981]
puts movies[0]
puts movies[1]
puts movies[2]
puts movies[3]
puts movies[4]

#5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

puts 5 * 4 * 3 * 1
puts 6 * 5 * 4 * 3 * 1
puts 7 * 6 * 5 * 4 * 3 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 1

#6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
#assign local var. to 3 floats
val1 = 4.0
val2 = 10.0
val3 = 6.5

#prints the square value
puts val1 * val1
puts val2 * val2
puts val3 * val3

#7.What does the following error message tell you?
# there is a a syntax error, possibly the wrong bracket was used to inclose a hash literal when a curly bracket should have been used instead.
