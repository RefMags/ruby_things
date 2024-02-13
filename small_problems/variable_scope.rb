a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

#  => 7

a = 7

def my_value(a)
  a += 10 # Reassignment; a variable inside the method are self contained
end

my_value(a)
puts a

# => 7

a = 7

def my_value(b)
  a = b # Reassignment; a variable inside the method are self contained
  # initialize a new loca variable inside the method that is not visible outside
end

my_value(a + 5) # the argument to my value method evaluates to 12
puts a

# => 7

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# => Xy-zy

# Part 6

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# Part 7

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Part 8
a = ''
array = [1, 2, 3]

array.each do |element|
  a = element # undefined local variable 'a'
end

puts a # an exception is raised

# Part 9
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# Part 10
a = 7
array = [1, 2, 3]

def my_value(arr)
  arr.each do |b|
    a += b
  end
end

my_value(array)
puts a
# => error, undefined method
