require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(operation)
  MESSAGES['operation_messages'].fetch(operation)
end

def get_name(user_name)
  name = ''
  loop do
    name = gets.chomp

    if name.empty?()
      prompt(MESSAGES['valid_name'])
    else
      break
    end
  end

  name = name.capitalize
  prompt(MESSAGES['welcome_message'] + name)
  name
end

def get_number(input)
  number = ''
  prompt(MESSAGES['insert_number1'])
  prompt(MESSAGES['insert_number2'])
  loop do
    number = Kernel.gets().chomp()

    if integer?(number)
      break
    else
      prompt(MESSAGES['invalid_number_error:'])
    end
  end
  number
end

def get_operation(operation)
  operator = ''
  loop do
    operator = gets().chomp().to_i
    if (1..4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_operation'])
    end
  end
  prompt(MESSAGES['op_sel_confirmation'] + operation_to_message(operator))
  operator
end

# Welcome Message
prompt(MESSAGES['welcome'])
user_name = get_name(MESSAGES['valid_name'])

# Main loop of calculator program
loop do
  number1 = get_number(MESSAGES['insert_number1'])
  number2 = get_number(MESSAGES['insert_number2'])

  # Ask user which operation they want to perform
  prompt(MESSAGES['op_prompt_msg'])
  prompt(MESSAGES['op_selection'])
  operator = get_operation(MESSAGES['op_prompt_msg'])

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
                prompt(MESSAGES['greater_than_0_number'])
                number2 = gets.chomp
              else
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
