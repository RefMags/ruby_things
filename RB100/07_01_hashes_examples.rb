# Ex 1. iterating_over_hashes

person = { name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}



person.each do |key, value|  # variable is assigned both key and value with each method
  puts "Bob's #{key} is #{value}"
end

# Ex 2. optional_parameters

def greeting(name, options = {})
  if options.empty? # the hash empty? method detects whether the options parameter, hash, has anything passed
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" + "years old and I live in #{options[:city]}."
  end
end

greeting("Bob") # no optional param
greeting("Bob", {age: 62, city: "New York"}) # hash is used to send the optional param
greeting("Bob", age: 62, city: "New York") # arguments can also be passed like this
