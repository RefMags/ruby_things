require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def integer?(input)
  input.to_s == input
end

def float?(input)
  input.to_f.to_i == input
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(operation)
  # OPERATION_MESSAGES.fetch(operation)
  MESSAGES['operation_messages'].fetch(operation)
end

prompt(MESSAGES['welcome'])

# Prompt user for their name
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end
prompt(MESSAGES['welcome_message'] + name)

# Main loop of calculator program
loop do
  prompt(MESSAGES['insert_number1'])
  number1 = ''
  loop do
    number1 = Kernel.gets().chomp()

    if integer?(number1)
      break
    else
      prompt(MESSAGES['invalid_number_error:'])
    end
  end

  # prompt(messages['insert_number2'])
  prompt("Please input your second number:")
  number2 = ''
  loop do
    number2 = Kernel.gets().chomp()

    if integer?(number2)
      break
    else
      prompt(MESSAGES['invalid_number_error:'])
    end
  end

  # Ask user which operation they want to perform
  prompt(MESSAGES['op_prompt_msg'])
  prompt(MESSAGES['op_selection'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp().to_i
    if (1..4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_operation'])
    end
  end
  prompt(MESSAGES['op_sel_confirmation'] + operation_to_message(operator))

  result =  case operator
            when 1
              number1.to_f + number2.to_f
            when 2
              number1.to_f - number2.to_f
            when 3
              number1.to_f * number2.to_f
            when 4
              if number2.to_f.zero?
                prompt(MESSAGES['zero_div_error'])
                promp(MESSAGES['greater_than_0_number'])
                number2 = gets.chomp
                number1.to_f / number2.to_f
              end
            end
  results = result.to_s
  prompt(operation_to_message(operator) + MESSAGES['result'] + results)

  # Prompt user for another calculation
  prompt(MESSAGES['calculate_again?'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
