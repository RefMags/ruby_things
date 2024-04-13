# ask user for their age and then tell them how old theur will be in 10, 20, 30
# 40 years

puts "Please enter your age: "

age = gets.chomp.to_i

puts "In 10 years you will be #{age + 10}"
puts "In 20 years you will be #{age + 20}"
puts "In 30 years you will be #{age + 30}"
puts "In 40 years you will be #{age + 40}"

# what does x print for the following code?
x = 0
3.times do
  x += 1
end
puts x # outputs 3 because x is accessible within the method invocation of the do... end method.

# What will x print?
y = 0
3.times do
  y += 1
  x = y
end
puts x # undefined varible x, because the varible x is initialized withing the block and is not accessible outside the method invocation
