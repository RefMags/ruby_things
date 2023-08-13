# 1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
def has_lab?(string)
  if string =~ /lab/
    puts string
  else
    puts "#{string} has no 'lab' sequence of characters "
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth") #has "lab" though the first letter starts in capital
has_lab?("elaborate")
has_lab?("polar bear")
# 2. What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }  # nothing is printed because block is never activated with .call method.
# the method returns a Proc object.

# 3. What is exception handling and what problem does it solve?
# -> a specific process/structure that deals with error handling in a program.
# it is a way of handling error by changing the flow of control without exiting the program entirely.

# 4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5. Why does the following code...

def execute(block) # -> the ampersand "&" is missing that specify that the argument is a block that can be passed to the method as a parameter.
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
