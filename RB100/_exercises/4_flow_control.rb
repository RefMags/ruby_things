# what will the follwing code return? (True/False)

(32 * 4) >= 129 #false

false != !True # false

true == 4 # true

false == (847 == '847') #true

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false #

# 2. write a method that takes a string as an argument.
# the method should return a new all-caps version of the string only if the string is longer than 10 characters.

def all_caps(characters)
  if characters.length > 10
    characters.upcase
  else
    characters
  end
end

all_caps("hello world")
all_caps("hello")

# 3. write a program that takes a number from user between 0 and 100.
# the return should report whether its between 0 and 50, 51 and 100 or above 100

puts "Please input your number: "
number = gets.chomp.to_i

if number <= 50
  puts "the number is between 0 and 50"
elsif number > 50 && number <= 100
  puts "the number is between 51 and 100"
else
  puts "the number is above 100"
end


# 4. What will each block code below print?
# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE") # outputs False because using the equality '==' the string 4 does not equal integer 4

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?" # this is what is output
else
  puts "Did you?"
end

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!" # prints this part
else
  puts "Alrighty!"
end

# 5. what does the error from running the following code mean and how can it be corrected?

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end #this is what was used to correct the error.
end

equal_to_four(5)

# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

# There is an end keyword missing for conditional method.

# 6. write down whether the following expression return true or false or raise an error.

(32 * 4) >= "129" # false, comparing string to integer
847 == '847' # false
'847' < '846'
'847' > '846'
'847' > '8478'
'847' < '8478'
