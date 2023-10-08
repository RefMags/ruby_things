# building a command line calculator
# ask user for two numbers
# ask user for the type of operation to perform: add, subtract, multiply or divide.
# perform an operation of the two numbers
# displays the results
#  REFACTORING Calculator

# Change the prompt by extracting to a method.
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0 # number should have a valid number representation.
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

prompt("Welcome to the Calculator! Enter your name: ")

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = '' # initialize the number variable outside to allow access throught the program.
  loop do
    prompt("Please enter the first number: ")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm.. that doesnt look like a valid number")
    end
  end

  number2 = ''
  loop do
    prompt("Please enter the second number: ")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmm.. that doesnt look like a valid number")
    end
  end

  operator = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must include 1, 2, 3, or 4")
    end
  end
  prompt("#{operation_to_message(operator)} the two numbers...")

  # change if condition to a case statement
  result =  case operator
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i
            when '3'
              number1.to_i * number2.to_i
            when '4'
              number1.to_f / number2.to_f
            end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Calculator. Goodbye!")
