# build a calculator
# ask the user for two number
# ask the user for the type of operation they would like to perform
# addition , subtraction, division or multiplication
# Perform an operation of the two numbers and display results.

# REFACTORING CODE #
# suppose we want to change the prompt

# ADDING BONUS FEATURES #
# 1. Better integer validation
#   currently its not fully accurate, as 0 cannot be entered.
# 2. Number validation
#   How can we build a validating method, called number? to verify that only
#   numbers --integers or floats-- are entered?
# 3. Derisk the "operation_to_message" method to accomodate for additional
# code that may be added after the "case" statement within the method.
# Add some changes
# 4. Extracting messages in the program to a configuration file.
#   Because there are lots of messages to the program, we could move them into
#   a configuration file and access by key.
# 5. Internationalize the message in your calculator.
# Using the configuration file,send message to call the right translti to cod
# validate that only a language is choosen/ message that only certain language
# exists

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Validating the
def valid_number?(number)
  number.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to the calculator! Enter your name:  ")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")
loop do # main loop
  # Get user's numbers
  first_number = ''
  loop do
    prompt("Please input your first number")
    first_number = Kernel.gets().chomp()

    if valid_number?(first_number)
      break
    else
      prompt("Hmmm... that doesnt look like a valid number")
    end
  end

  second_number = ''
  loop do
    prompt("Please input your second number")
    second_number = Kernel.gets().chomp()

    if valid_number?(second_number)
      break
    else
      prompt("Hmmm... that doesnt look like a valid number")
    end
  end

  # Get user's choice of operation
  operator_prompt = <<-MSG
    "Which operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must be 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers....")

  # refactor using case statement

  results = case operator
            when '1'
              first_number.to_i() + second_number.to_i()
            when '2'
              first_number.to_i() - second_number.to_i()
            when '3'
              first_number.to_i() * second_number.to_i()
            when '4'
              first_number.to_f() / second_number.to_f()
            end

  prompt("The result is #{results}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Goodbye!")


# Question 1
# I messed up my rainbow array. How can I replace `nil` with the proper next color, 'green'?

next_color = 'green'
rainbow = ['red', 'orange', 'yellow', nil]

# Your Code Here

p rainbow // ['red', 'orange', 'yellow', 'green']




# Question 2
# Right now, this code prints every number out. Can you write an expression that will only print a number if it's evenly divisible by 3?

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

numbers.each do |number|
  if # Your expression here
    puts "#{number} is divisible by 3!"
  end
end


# Question 3
# Without knowing what `value2` is, is there a value we can assign to `value1` to guarentee that we don't print the "Don't print me!!!" String? What mechanism is at play here?

value1 = # ???
value2 = # Our Choice

if value1 && value2
  puts "Don't print me!!!"
end
