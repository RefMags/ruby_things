# the expression will return

(32 * 4) >= 129 # <-- false
false != !true # <-- false
true == 4 # <-- false
false == (847 === '847') # <-- true
(!true || (!(100 / 5) == 20) || ((328/ 4) == 82)) || false # <-- true

#Write a method that takes a string as an argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
 def caps(word)
  if word.length > 10
    word.upcase!
  else
    word
  end
end

puts caps("Sam, Hello to the world!")

# 3. Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
puts "please provide a number between 0 and 100"
a = gets.chomp.to_i

if a.between?(0, 50) #<-- used the between method as to specify the range of the numbers to evaluate
  puts "number is between 0 and 50"
elsif a.between?(51, 100)
  puts "number is between 51 and 100"
else
  puts "number is not in range of 0 to 100"
end


# 4. What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.
'4' == 4 ? puts("TRUE") : puts("FALSE") #<-- Prints "FALSE"

x = 2
if ((x * 3) / 2 == (4 + 4 - x - 3)) # answer is 3 == 3
  puts "Did you get it right?"
else
  puts "Did you?"
end #<----Prints "Did you get it right?"

y = 9
x = 10
if (x + 1) <= (y) # answer is 11 so moves to next evaluation
  puts "Alright"
elsif (x + 1) >= (y) #answer is 11, higher than y = 9
  puts "Alright now!"
  elsif (y + 1) == x
    puts "ALRIGHT NOW!"
  else
    puts "Alrighty"
  end #<--- Prints "Alright now!"

  # 5. When you run the following code...

  def equal_to_four(x)
    if x == 4
      puts "yup"
    else
      puts "nope"
    end
  end #<<--- when this end is not included a syntax error occurs because there has been no closure of the def method to show its completion. instead only the completion for the if method is concluded.

    equal_to_four(5)

# 6. Write down whether the following expressions return true or false or raise an error. Then, type the expressions into irb to see the results.

(32 * 4) >= "129" #<<-- error message is raised
847 == '847' #<<-- false
'847' < '846' #<<--false 7 is > 6
'847' > '846' #<<--- true
'847' > '8478' #<<--- false
'847' < '8478'#<<--- true
