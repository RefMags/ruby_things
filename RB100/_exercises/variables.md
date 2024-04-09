1) What will the code print?
a = 7 => a variable is assigned the value 7

def my_value(b) #defined a method my_value that takes in parameter b
  b += 10  # b is incremented by 10
end

my_value(a) # we invoke 'a' value to my_value method
puts a  # and put(print out) a
RETURN => 7
----------
WHY?
- Reassignment, += do not mutate a variable, instead it binds the variable to a new object.
that is '+=' sets the variable to point to a different object.
@ line 5, b is binded to a new object, the one pointing to a remains unchanged.
- Alternatively, numbers are immutable, therefore my_value does not mutate the value referenced by 'b', that is m_value does not change the object reference by 'a(7)'
---------

2) What will the code print?

a = 7

def my_value(a)
  a += 10 # we are reassignmening the 'a' value to a new object but then
            numbers are immutable so
end

my_value(a)
puts a  # we output 7

----------
Alternatively, we know that method definitions are self contained with respect to local variable.
Locals outside the method definition are not visible inside the method definition, so the top level a is not available inside my_value.
Furthermore, local variable inside the method definition are not visible outside the method definition; so 'a' inside my_value is local variable with no top-visibility.

-------

3) What will the code print?
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a # puts 7

-----
WHY?
- the local variable a inside my_value method is not visible outside the method definition
- and the local variable ' a' at top-level is not visible inside my_value method

4) What will the code print?

a = "Xyzzy"

def my_value(b)
  b[2] = '-' # we are assigning  b[2] instead of 'b'
end

my_value(a)
puts a # puts "Xy-zy"

-----
WHY?
- unlike 'a' numbers are immutable, and assigment merely changes the object a reference.
- with Strings however, they are mutable - they can be modified and in particular the method String#[] is a mutating method.
- we are modifying the string referenced by b, and b reference the same string as 'a', the result from printing a shows an updated to the value of the string
--------

5) What will the code print?

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'  # although b reassigns the value b(references a            or pointing to a) there is no mutation of the value. there is no modification to the string b
end

my_value(a)
puts a # puts "Xyzzy"


-----

6) What will the code print?

a = 7

def my_value(b)
  b = a + a # b is reference a, and assigns a new value b to a, however is not accessible inside my_value method.
end

my_value(a)
puts a  # pundefined local variable or method 'a', because is not visible inside my value

-------

7) What will the code print?

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

----
we are dealing with method invocation that has a block,

------
8) What will code print?
array = [1, 2, 3]

array.each do |element|
  a = element  # local variable is not defined in this scope because a was never initialized.
end

puts a # puts out a method error of undefined local varibale or method.

-----

9) what will the code print?

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a  # shadowing


------

10)

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
