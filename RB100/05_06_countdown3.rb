# Ex 1
x = gets.chomp.to_i
for i in 1..x do
  puts x - i
end
puts "Done!"

# Ex 2 for loop {returns collection of elements} vs while {returns nil}

x = [1, 2, 3, 4, 5]

for i in x.reverse do #uses a reverse to insure proper countdown, otherwise loops counts up
  puts i
end

puts "Done!"
