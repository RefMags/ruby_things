puts "hello"
puts "hi"
puts "how are you"
puts "I am fine"

def say(words)
  puts words + '.' # Ability to make one change here
end

say("hello") #hello is passed on as argument in place for the words parameter. Then the code within the method definition is executed with the words local variable evaluated to "hello"
say("hi")
say("how are you")
say("I am fine")

#Method definition and local variable scope

a = 5

def some_method
  a = 3
end

puts a #output 5 because method definitions create their own scope that's entirely outside of the execution flow.

#method invocation with a block
[1, 2, 3].each do |num|
  puts num
end

# method definition
def print_num(num)
  puts num
end


#Mutating Argument

def some_method(number) #2. in the method, the value of a is assigned a local variable number which is scoped at the method definition level.
  number = 7 #number is reassigned the value 7
end

a = 5
some_method(a) #1. a is passed in to the method
puts a

# Does the reassigment of the number to 1 affect a's output?
# No, since number is scoped at the method definition level and a's value remains unchanged
# Method definitions cannot modify arguments passed into them permanently.
