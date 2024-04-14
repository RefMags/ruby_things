# write a program that prints a greeting message, method should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
  "Hello #{name}"
end

puts greeting("Sofia")

# What do the followiing expression evaluate to?


  # 1. x = 2 => returns 2

  # 2. puts x = 2 => prints out 2 and returns nil

  # 3. p name = "Joe" => prints out "Joe" returns "Joe"

  # 4. four = "four" => returns "four"

  # 5. print something = "nothing" => prints out "nothing" and returns nil



# 3. write a program that includes method "multiply" that takes two arguments and returns the product of the two numbers

def multiply(num1, num2)
  num1 * num2
end

puts multiply(3, 2)

# 4. what will following code print and why?

def scream(words)
  words = words + "!!!!"
  return # when you explicity return from a method Ruby exits that method immediately and subsequent code will not be executed.
  puts words
end

scream("Yippeee")

# 5. Edit code from 4 such that it print words on the screen. and state what it returns now

def scream(words)
  words = words + "!!!!"
  # return
  # puts words : by commenting or removing this we allow the words assignment expression to assign the local variable words the string "yippie"
end

# or

def scream(words)
  words = words + "!!!"
  puts words
  return words #swap the return explicit command after we have output(print) out the words.
end

scream("Yippeee")

# 6. what does the error message tell from below

# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

#  the method was expecting two arguments but only received 1 for the calculate_product method.
