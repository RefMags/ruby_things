#Mutating Arguments
a = [1, 2, 3]

#Example of a method definition that mutates its arguments permanently
def mutate(array)
  array.pop
end

p "Before mutate method : #{a}"
mutate(a)
p "After mutate method: #{a}"

# the array is permanently modified that the local variable 'a' references.
#How? by passing it to the mutate method even though it is outside the method's definition scope.
#Why? the 'pop' method mutates its calling object(the array specified by array)
#a is still pointing to the same array, but the number of elements changes

#Contrast with another code
a = [1, 2, 3]
#Example of a method definition that does not mutate the argument
def no_mutate(array)
  array.last #last method does not mutate the calling object 'array' hence the array passed to 'no_mutate' is not mutated
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"


#puts vs return: The Sequel
a = [1, 2, 3]

def mutate(array)
  array.pop
end
p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"
