# Ex 1. using each.method to print to screen
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name } #"." operator calls the each method
# "each" method loops through each element in array, in order, then executes code within block
# blocks start and end are defined by "{}"
# each iteration assigns the value of the element to variable
# the variable is "name", then the logic used to operate on the variable is added ie simply want to "puts"

# Ex 2. block with do/end

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

x = 1 # a counter x is added to create an ordered list of names to be printed

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
