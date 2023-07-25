puts "How old are you? "
age = gets.chomp.to_i

puts "In 10 years you will be: "
puts age + 10

puts "In 20 years you will be: "
puts age + 20

puts "In 30 years you will be: "
puts age + 30

puts "In 40 years you will be: "
puts age + 40

x = 0
3.times do
  x += 1
end
puts x

y = 0
3.times do
  y += 1
  x = y #this x (change to z) will throw an error as it is created within the scope of the do/end block
end
puts x
