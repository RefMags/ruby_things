#Ex 1

def mutate(arr)
  arr.pop # inside, arr.pop mutates caller which in turn mutate the argument passed to mutate
end

def not_mutate(arr)
  arr.select{ |i| i > 3}
end

a = [1, 2, 3, 4, 5, 6]
mutate(a) # perfoms a distructive action with pop on its argument, hence modifying the array even though a is initilized outside of the method.
not_mutate(a) # perfomed a non-destructive action with select, the original variable is not changed.


puts a

#Ex 2 each vs map

# irb :001 > a = [1, 2, 3]
# irb :002 > a.each { |e| puts e }
# 1
# 2
# 3
# => [1, 2, 3]

# irb :003 > a = [1, 2, 3]
# irb :004 > a.each { |e| puts e + 2 } #elements in a are modified
# 3
# 4
# 5
# => [1, 2, 3]

# Ex 3 Enumerator

# irb :009 > a = [1, 2, 3]
# irb :010 > a.each
# => #<Enumerator: ...>

# Ex 4. map

# irb :011 > a = [1, 2, 3]
# irb :012 > a.map { |x| x**2 }
# => [1, 4, 9] # creates a new array consisting of the returned values of the block

# Ex 5

# irb :013 > a = [1, 2, 3]
# irb :014 > a.map { |x| puts x**2 }
# 1
# 4
# 9
# => [nil, nil, nil] # << puts returns  nil everytime the block is invoked, which makes up the value of the newly created returned array
