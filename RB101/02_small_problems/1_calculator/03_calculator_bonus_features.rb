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

# Validating number(either an integer or float)
def integer(number)
  # number.to_i != 0
  number.to_i.to_s == number
end

def float(number)
  # number.to_i != 0
  number.to_f.to_s == number
end

=begin
Input: A string
Output: true/false

Return true if and only if the input string consists of only numbers.

Input cases that will lead to false:
"a"
"+"
"25a"

The original code (number.to_i != 0) is a hint.
How does it work? Why did we use that solution eventhough it is imperfect?

Trying out false input cases with to_i:
"25a".to_i => 25

We want:
valid_number("25a") => false

This is really helpful, because calling to_i on "25a" got rid of the "a"!
"25a".to_i => 25

Can we compare the return value after to_i with the original object?
Yes! We just need to convert it back to a string:
"25a".to_i.to_s => "25"

Now that we have the value after the final transformation, we can compare if it's the same as its original.
"25a".to_i.to_s == "25a" => false

---------------------------------
"a".to_i.to_s            => "0"
"a".to_i.to_s == "a"     => false
valid_number?("a")       => false

"25a".to_i.to_s          => "25"
"25a".to_i.to_s == "25a" => false # false is what we want
valid_number?("25a")     => false

"25".to_i.to_s           => "25"
"25".to_i.to_s == "25"   => true  # true is what we want
valid_number?("25")      => true

"0".to_i.to_s            => "0"
"0".to_i.to_s == "0"     => true  # true is what we want
valid_number?("0")       => true

def valid_number?(number)
  number.to_i.to_s == number
end

'a25'.to_i.to_s          => "0"
'a25'.to_i.to_s == "a25" => false # false is what we want
---------------------------------

"a".to_i.to_s => "0"
"a".to_i.to_s == "a" => false

"0".to_i.to_s => "0"
"0".to_i.to_s == "0" => true

number.to_i != 0

=end

def valid_number?(number)
  # number.to_i != 0
  number.to_i.to_s == number || number.to_f.to_s == number
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

# MAIN LOOP
loop do
  # Get user's numbers
  num1 = ''
  loop do
    prompt("Please input your first number")
    num1 = Kernel.gets().chomp()

    if valid_number?(num1)
      break
    else
      prompt("Hmmm... that doesnt look like a valid number")
    end
  end

  num2 = ''
  loop do
    prompt("Please input your second number")
    num2 = Kernel.gets().chomp()

    if valid_number?(num2)
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

  # inlude a no zero division method
  def no_zero_division?(num2, op)
    num2.to_i == 0 && op == '4'
  end

  #  perform the operation method
  def perform_operation(operator, num1, num2)
    case operator
      when '1' then num1.to_f() + num2.to_f()
      when '2' then num1.to_f() - num2.to_f()
      when '3' then num1.to_f() * num2.to_f()
      when '4' then num1.to_f() / num2.to_f()
    end
  end

  prompt("The result is #{perform_operation(operator, num1, num2)}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

  prompt("Thank you for using the calculator. Goodbye!")
end
