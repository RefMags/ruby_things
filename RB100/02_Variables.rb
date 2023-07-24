#Variable Scope and Methods

name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

print_full_name 'Peter', 'Harry'
puts name

#Variable scope and Blocks

total = 0
[1, 2, 3].each { |number| total += number }
puts total

total = 0
[1, 2, 3].each do |number|
  total += number
end
puts total

a = 5
3.times do |n| #method invocation with a block
  a = 3
  b = 5
end
puts a
puts b


#Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
