a = 5
case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

#if_statement

a = 5
if a == 5
  puts "a is 5"
elsif a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

#refracted case_statement code
a = 5
answer = case a
when 5
  "a is 5"
when 6
  "a is 6"
else
  " a is neither 5, nor 6"
end
puts answer

#second form of case that doesnt take in an argument

a = 5
case #<= no argument is provided therefore each value is to be tested with "a == ""
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

#True and False
a = 0
if a
  puts "how can this be true?"
else
  puts "it is not true"
end

#the above 👆🏽 can be written as 👇🏽

if x = 5 #this is not testing the True of the variable x to be 5, instead it is an assignement of "5" to variable x therefore it will always be true
  puts "how can this be true?"
else
  puts "it is not true"
end
