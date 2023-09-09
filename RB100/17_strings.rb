# 1. Create a string
empty_string = String.new
# empty_string = '' # using string literals to create empty string

# 2. Quote Confusion
puts "It's now 12 o'clock."


# 3. Ignoring Case
# compare the value of name with 'RoGeR' while ignoring the case of both strings
# Print true if values are the same, print false if they are aren't.
name = 'Roger'
puts name.casecmp?('RoGeR') # casecmp returns 'True' when self  and other strings are equal


# Perform the same case sensitive comparison except compare the value of "name" with the string 'DAVE' instead of 'RoGeR'.
puts name.casecmp?('DAVE')

# 4. Dynamic string
# Modify code so that the value name is printed withing "Hello, !"

name = 'Elizabeth'

puts "Hello, #{name}!" # use string interpolation.

# Discussion : with string interpolation, you can invoke a variable or method within a string and Ruby automatically call #to_s
# dynamic values can be included within a string
# the variable name syntax includes its enclosure in curly braces and prepending that enclosure with pound sign#
# this tells Ruby to evaluate the code withing the curly braces.

# 5. Combining Names

first_name = 'John'
last_name = 'Doe'
# # concatinating
full_name = first_name + " " + last_name
puts full_name

# # interpolation
ful_name = "#{first_name} #{last_name}"
puts ful_name

# # String#insert
puts first_name.insert(4, last_name)

# String#concat
full_name= first_name.concat(" ", last_name)
puts full_name

# 6. Tricky formatting

state = 'tExAs'

puts state.capitalize!

# 7. Goodbye, not Hello
greeting = 'Hello!'
puts greeting

# 8. Print the Alphabet
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')
puts alphabet.chars

# 9. Pluralize
# use Array#each to print the plural of each words
words = 'car human elephant airplane'

words.split(' ').each { |word| puts word << 's'}
# words.split(' ').each  do |word|
#   puts word + 's'
# end

# 10. Are You There?

colors = ' blue pink yellow orange'
puts colors.include?('yellow')
puts colors.include?('purple')
