def add_three(number)
  number + 3
end

returned_value = add_three(4) #the returned_value is assigned to the value returned by the add_three method
puts returned_value

#explicitly returning a value

def add_three(number)
  return number + 3 #the evaluated result of number + 3 is returned without executing the last line
  #number + 4
end

returned_value = add_three(4)
puts returned_value

#Chaining methods

def add_three(n)
  n + 3 #returns not prints out the value passed in incremented by 3
end

puts add_three(5) #the add_method returns a value, we can keep calling methods on the returned value🔽

add_three(5).times {puts 'this should print 8 times'} #the times method is being called to the returned value of add_three(5)


"hi there".length.to_s

def add_three(n)
  puts n + 3 # puts is used to output the increment value as opposed to implicitly returning it
end

puts add_three(5)

# 8 this is output
# => nil this is the return value!

#add_three(5).times { puts 'will this work?' } # error message is returned when executing this line

def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end

puts add_three(4)


# Method calls as arguments

def add(a, b) #method takes in two parameters
  a + b
end

def subtract(a, b)
  a - b
end

puts add(20, 45) #calling the method add by passing 2 integer values

puts subtract(80, 10)

def multiply(num1, num2)
  num1 * num2
end

#passing add() and subtract() as arguments to multiply
puts multiply(add(20, 45), subtract(80, 10))

puts add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))


#CALL STACKS

def first
  puts "first method"
end

def second
  first
  puts "second method"
end

second
