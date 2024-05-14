# building a command line calculator
# ask user for two numbers
# ask user for the type of operation to perform: add, subtract, multiply or divide.
# perform an operation of the two numbers
# displays the results

# answer = Kernel.gets() # when invoking a method in Ruby visually it doesnt look any different from a variable. () are optional.
# Kernel.puts(answer) # gets and puts method look like they are in space but are actually stored in a module. Whats a variable, what a method call? and where are the methods called.

Kernel.puts("Welcome to the Calculator! We are going to perform some operations.")

Kernel.puts("Please enter the first number: ")
num1 = Kernel.gets().chomp()

Kernel.puts("Please enter the second number: ")
num2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1. add 2. subtract 3. multiply 4. divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = num1.to_i + num2.to_i # variable initialized within an "if" can be accessed outside of the "if"
elsif operator == '2'
  result = num1.to_i + num2.to_i # integers need to be converted to numbers with ".to_i"
elsif operator == "3"
  result = num1.to_i + num2.to_i
else
  result = num1.to_f / num2.to_f
end

Kernel.puts("The result is #{result}")
