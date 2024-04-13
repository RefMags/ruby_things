1. Adding two string together:
  first_name = "John"
  second_name = "Doe"

  first_name + '' + second_name
  " #{first_name} #{second_name}"

2. Use modulo operator, division or combination to take a 5 digit number and find the digit in the 1) thousand place 2) hundreds place 3) tens place 4) one place

num = 6235

  1) num / 1000 = 6
  2) num % 1000 /100 = 2
  3) num % 100 / 10 = 3
  4) num  % 10 = 4

3. write a program to store list of top five songs in 2023 and use puts command to print out the artist:
  top_songs = { :flowers => 'Miley Cyrus',
                :sprinter => 'Dave and Central Cee',
                :escapism => 'Raye ft 070 Shake',
                :anti_hero => 'Taylor Swift',
                :miracle => 'Calvin Harris/Ellie Goulding'
              }

We can retrieve a number by its key
  puts top_songs[:flowers]
  puts top_songs[:sprinter]
  puts top_songs[:escapism]
  puts top_songs[:anti_hero]
  puts top_songs[:miracle]


4. use the names of the artist previously and store them in an array, then output the same thing (artist) in a similar fashion：
artist = ['Miley Cyrus', 'Dave and Central Cee', 'Raye ft 070 Shake', 'Taylor Swift', 'Calvin Harris/Ellie Goulding']

we retrieve the element by referencing the index number to print out the artist name.
puts artist[0]
puts artist[1]
puts artist[2]
puts artist[3]
puts artist[4]


5. write a program that outputs the factorial of the numbers 5, 6, 7 and 8

a factorial function multiplies all whole numbers from our chosen value up to 1.
4! = 4 * 3 * 2 * 1

puts  5 * 4 * 3 * 2 * 1
puts  6 * 5 * 4 * 3 * 2 * 1
puts  7 * 6 * 5 * 4 * 3 * 2 * 1
puts  8 * 7 * 6 * 5 * 4 * 3 * 2 * 1



6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen

num1 = 2.3
num2 = 4.5
num3 = 3.1

puts num1 * num1
puts num2 * num2
puts num3 * num3



7. what does the following error tell you?

SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'

  these error indicates that a syntax error occured in line 2, the code expected '}' instead of ')' that was input
  this might have happened when creating a hash
