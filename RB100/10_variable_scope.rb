# 1

a = 7
def my_value(b)
  b += 10 #b is reassigned to a new value. numbers are immutable in Ruby += sets the var to point to a differnet object
  # puts b
end
my_value(a)
puts a # Method definitions cannot modify arguments permanently

a = 7 # local variable is not visible inside my_value
 def my_value(b) #method definitions are self contained with respect to local variables.
  a = b # the variable a inside the method definition is not visible outside the my_value method
 end

 my_value(a + 5)
#  puts a

# 2.
a = "Xyzzy"

def my_value(b)
  b[2] = '_'
end

my_value(a)
puts a
 # PRINTS : "Xy_zy"
 # unlike numbers which are immutable, strings can be manipulated since they are mutable objects
 # String[]　“b[2]” is a mutating method .
 # the string referenced by "b" ,and b references the same string a, results from printing a shows an update to the value string.
# String[index] is a mutating method, hence b[2] method mutates b to a new string inside the method "my_value". The 'b' is a reference to the variable 'a', and when the "my_value" method is called to 'a' and printed it gives a mutated 'a' string of "Xy_zy"

# 5.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# PRINTS "Xyzzy"
# a is not modified because "b = 'yzzyX' " is just an assignment(=) of the calling object "b".
# the string "b" passed to "my_value" is not mutated.


# 6.

# a = 7

# def my_value(b)
#   b = a + a
# end

# my_value(a)
# puts a

# PRINTS: `my_value': undefined local variable or method `a' for main:Object (NameError)
# a is not modified because "b = a + a " is performs a numeric addition, however "a" is not visible inside my_value.
# methods have self contained scope ie, only the variables intialized within method's body can be referenced or modified within a method's body.
# furthermore variables initialized inside a methods's body arent available outside the method's body
# similarly, local variables initialized outside the method definition are not visible inside the method definition


# 7.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# within the variable scope and blocks concept (method invocation with a block) it is that the inner scope can access variables initialized in an outer scope.
# hence "a" variable is re-set within the block from original 7 to 1 to 2 to 3

# 8.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# in a method invocation with a block the outer space cannot access the variables initialized in the inner scope.
# a is a variable created within the block therefore it is not accessible.
# OUTPUTS: undefined local variable or method `a' for main:Object

# 9.

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# 9. 
a = 7
array = [1, 2, 3]

array.each do |a| #--> the block parameter "|a|" hides the local variable that is defined outside the block. 
  a += 1 # once the outer a is shadowed, a+=1 has no effect on outer a . concept is shadowing 
end

puts a # puts 7


# 10. 

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a


# Example 1.
name = 'Someone Else'

def print_full_name(first_name, last_name) # method a piece of reusable code 'print_full_name'
  name = first_name + ' ' + last_name
  puts name
end

print_full_name 'Peter', 'Henry' #Once the method is defined we, it can be called as many times with different values for the parameter(first_name & last_name)
puts name

# In terms of var.scope, methods have self-contained scope:
# only variables initialized within the method's body can be referenced or modified from within the method's body
# Variables initialized inside a method's body arent available outside the method's body.
# the name Var in line 30 cant be used or changed from inside the print_full_name method.
# however, it is possible to create and use a different 'name' var. that is locally scoped to the method


# Ex 2 Var & block

# scope.rb

a = 5             # variable is initialized in the outer scope

3.times do |n|    # method invocation with a block
  a = 3           # is a accessible here, in an inner scope?
end

puts a # value of a is 3, since a is available to the indder scope created in the block 3.times do which allowed the code to re-assign the value a.

a = [1, 2, 3]

# Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
