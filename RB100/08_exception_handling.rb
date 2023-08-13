# Ex 1. exception_example

# begin
#   # perform some dangerous operation
# rescue
#   # do this if operation fails
#   # for example, log the error
# end

# Ex 2

name = ['bob', 'joe', 'steve', nil, 'frank']

name.each do |name|
  begin #begin/rescue/end block used to handle any exception
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Somethings went wrong!"
  end
end

# Ex 3. inline_exception_example

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that" # "each" method cannot be called on an Integer which is the value of "zero" variable
puts "After each call"


# Ex 4. divide

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)
