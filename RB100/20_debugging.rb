# 1. Reading Error Messages
def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0) # (ArgumentError) raised. there are 6 arguments given to the this method invocation yet the expected is 1 parameter according to the parameter 'numbers'. the numbers could be passed on as an array instead
find_first_nonzero_among(1) # the method invocation raises an unidentified method 'each' (NoMethodError) this is due to the fact that each method cannot call "each" to an integer. the argument 1 is provided to the method but the each method do nothave each method.

# 2. Weather Forecast
def predict_weather
  sunshine = [true, false].sample #change from string to Boolean

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

puts predict_weather

# 3. Multiply By Five
def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i #gets.chomp is a string input there change the user input to an integer to allow for calculation.

puts "The result is #{multiply_by_five(number)}!"
# 4. Pets

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'
or
pets[:dog].push('bowser')
p pets

# 5. Even numbers
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]

# 6. Confucius Says

def get_quote(person) # refactor the code
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# 7.  Account Balance
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end


[january, february, march].each do |month|
  balance += calculate_balance(month)  # increment the balance of with +=
end

puts balance

#8. Colorful Things

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1 # break the loop when is greater than the things  so that it is executed wheun even when i = things.length.
                                # however since colors Arr is shorter, nil will be returned hence the break condition should include a -1


  # break if i >= colors.length - 1 || i >= things.length # Alternatively use or ||

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end


# 9. Digit Product

# 10. Warriors and Wizards


# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player = player.merge(character_classes[input.to_sym]) # convert the hash input to_sym ; to update the playeer hash we need to reassign it to a new hash or use the destructive method "merge!"
# alternative
#player.merge!(character_classes[input.to_sym])

puts 'Your character stats:'
puts player
