#1. write a program that checks if the sequence of characters "lab" exist in the following strings.
# if it exists print out the word

def has_lab(string)
  if string =~ /lab/
    puts "#{string}"
  else
    puts "lab is not present in the #{string}"
  end
end
has_lab("laboratory")
has_lab("experiment")
has_lab("Pans Labyrinth")
has_lab("elaborate")
has_lab("polar bear")

# 2. what will the following program print?
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#3. what is exception handling and what problem does it solve?

# 4. Modify the code in exercise 2 to make the block execute properly.

# 5. Why does the following code

# def execute(block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

# give us the following error when we run it?
# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'
