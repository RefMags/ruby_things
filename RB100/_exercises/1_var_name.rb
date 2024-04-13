# ask user for their name and output a welcoming message.
# prints the name 10 times
# ask the user for first name, saves to a varible and ask for last name and then output their full name

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp


puts "Greeting from Japan! #{first_name} #{last_name}"

10.times do
  puts first_name + ' ' + last_name
end
