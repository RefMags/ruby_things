# Ex 1

a = [1, 2, 3, 3]
b = a
c = a.uniq

def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
puts test(a) # variable used to pass argument to a method; the original variable "a" is assigned to an inside variable in method "b".

# equivalent to executing "b = a"
# inside the method, the operations b formed on the "b" variable determine whether the value of "a" will change
