# 1. Breakfast, Lunch, or Dinner? (Part 1)
# Discuss the code
def meal
  return 'Breakfast' # although a return word is used, even without its presence 'Breakfast' would still be printed when method is called after the body is executed.
end

puts meal # the method call returns 'Breakfast' which was evaluated in the meal method


# 2. Breakfast, Lunch, or Dinner? (Part 2)
def meal
  'Evening' # the body is executed and a method call returns the results of the execution.
end
 puts meal # returns evening

 # 3. Breakfast, Lunch, or Dinner? (Part 3)
def meal
  return 'Breakfast' # the first line is evaluated and because of return it exits the method to print the return 'Breakfast' when the meal method is called.
  'Dinner'
end
 puts meal

 # 4. Breakfast, Lunch, or Dinner? (Part 4)

 def meal
  puts 'Dinner' # 'Dinner' which is the value given is output and returns nil. The return value of puts is nil.
  return 'Breakfast' # the value of the return linked to the method meal is 'Breakfast'
end


puts meal

 # 5. Breakfast, Lunch, or Dinner? (Part 5)

 def meal
  'Dinner' # outputs dinner when the method is called
  puts 'Dinner' # returns a nil because the return value evaluated result of this line
end

p meal # p allows for the return of the "puts" to be visible to the output

 # 6. Breakfast, Lunch, or Dinner? (Part 6)

 def meal
  return 'Breakfast' # the first line is evaluated and because of return it exits the method to print the return 'Breakfast' when the meal method is called.
  'Dinner'
  puts 'Dinner'
end

puts meal

 # 7. Counting sheep (Part 1)

 def count_sheep
  5.times do |sheep| # the method Integers#times is used within the count_sheep method to count. the block is called self times with each integer.
    puts sheep
  end
end

puts count_sheep # returns the number of iterations carried out
# Integer#times is also evaluated hence 5 is printed

# 8.Counting sheep (Part 2)

def count_sheep
  5.times do |sheep| # the block method is evaluated first to count the sheep
    puts sheep
  end
  10 # prints the number 10
end

puts count_sheep # returns the number of iterations carried out


# 9. Counting sheep (Part 3)

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return # return provides no value hence nil is printed once the conditional 'if' is satisfied with sheep count = 2
    end
  end
end

p count_sheep # p insures that the return is visible when printed after invoking the couunt_sheep method.

# Print 0 1 2 nil

# 10 Tricky number

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
