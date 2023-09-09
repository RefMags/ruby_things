# 1. Print me (Part 1)

def print_me
  puts "I'm printing within the method!" #puts inside a method outputs one thing and return another. the return is nil. the calue is printed inside the method.
end
 print_me # call the method

# 2. Print me (Part 2)

def print_me
  "I'm printing within the method!" # if puts is not used within the method or when invoking the method nothing is returned
end

puts print_me # place the puts before the method invocation

# 3. getting through methods (Part 1)
# write two methods; 1. should return "Hello" and another "World"
# print both strings using puts combining in to one sentence

def greeting
  "Hello"
end

def to_whom
  "World"
end

puts greeting + " " + to_whom # concatenate
# puts "#{greeting} #{to_whom}" # or use interpolation

# 4.

def greeting
  "Hello"
end

def to_whom
  "World"
end

def greet
  greeting + " " + to_whom
end

puts greet

# 5. Make and model

def car(maker, model)
  maker + " " + model
  # puts "#{maker} #{model}"
end

puts car('Toyota', 'Corolla')
# car('Toyota', 'Corolla' )

# 6. Day or night
# method named time_of_the_day ; if given a boolean as argument, prints "Its daytime!"
# if the boolean is true and "It's nighttime" if its false.
# pass daylight into the method as an argument to determine whether its day or night

def time_of_the_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_the_day(daylight)

# 7. Naming animals

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Spikey')}."

# 8. Name not found.
# method should accept one argument, but not require it
# the parameter should default to "Bob" if no argument is given

def assign_name(name = "Bob") # assign a default parameter
  name
end
 puts assign_name("Kevin")
 puts assign_name

 # 9. multiply the sum

def add1(num1, num2)
  num1 + num2
end

def add2(num1, num2)
  num1 + num2
end


def multiply(add1, add2)
  add1 * add2
end
puts add1(2, 2)
puts add2(5, 4)
puts multiply(add1(2, 2), add2(5, 4))

# Alternatively

def add1(num1, num2)
  num1 + num2
end
def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2)
puts add(5, 4)
puts multiply(add(2, 2), add(5, 4))

# 10. Random sentence
# write methods name and activity so that each take the appropriate array and return a random value from it.
# write the method sentence tha combines both values into a sentence and returns it from the method

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities) # set as the parameter
  activities.sample
end

def sentence(name, activity)
  puts "#{name} went #{activity} today!"
end

puts names
puts activities
puts sentence(name(names), activity(activities))
