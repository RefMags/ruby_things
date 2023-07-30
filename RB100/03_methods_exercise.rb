#1. Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
  puts "Hello" + ' ' + name
end

greeting("Sam")

#2. What do the following expressions evaluate to? That is, what value does each expression return?

x = 2 # Evaluates to 2

puts x = 2 # evaluates to output 2 and returns nil

p name = "Joe" # prints out string Joe

four = "four" # evaluates to four

#print something = "nothing" # evaluate to a print of nothing => nil

#3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(num1, num2)
  puts num1 * num2
end

multiply(4, 6)
multiply(26, 30)

#4.What will the following code print to the screen?

def scream(words)
  words = words + "!!!!" #words is reassigned, to return vallue of concatinanting words with a string of !!
  return #reserve word, Ruby exits from method when this is explicitly stated and subsequent code is not executed.
  puts words
end

scream("yippeee") # evaluates to return nil in irb but nothing when ruby.rb

#5. 1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?
def scream(words)
  words = words + "!!!!"
  puts words #the return value is the evaluated result of this line executed
  #return #we make return the last expression in the scream method definition. remove the reserve word to output the puts words
end

p scream("yippeee") #prints the return value by placing p

#6. What does the following error message tell you?

#ArgumentError: wrong number of arguments (1 for 2) # ANSWER: there has been an input of the wrong number of arguments when passing it to the method calculate_product. input of argument is 1 instead of 2
  #from (irb):1:in `calculate_product'
  #from (irb):4
  #from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
