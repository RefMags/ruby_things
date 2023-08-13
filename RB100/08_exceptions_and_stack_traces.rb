
# Ex 1 greeting.rb

# def greet(person) # define a method  greet, which expects one parameter
#   puts "Hello, " + person
# end

# greet("John") # main -> greet -> puts -> exit and return to main
# greet(1) # main -> greet -> puts (program flow doesnt exit back to main)
 # the error occurs due to the call made in the 'main' context on l9, which match the line that called the method with incorrect arguments in line 5.


# Ex 2

def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John") # passes the execution flow as
# main -> decorate_greeting -> greet -> space_out_letters(passes result back) -> greet -> decorate_greeting -> main

decorate_greeting(1)
