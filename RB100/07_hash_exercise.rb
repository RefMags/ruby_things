# 1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array.

family = { uncles: ["bob", "joe", "steve"],
          sisters: ["jane", "jill", "beth"],
          brothers: ["frank", "rob", "david"],
          aunts: ["mary", "sally", "susan"]
          }


immediate_family = family.select do |key, value| #each key and value is passed to block
  key == :sisters || key == :brothers
end

p immediate_family.values.flatten #invoke hash.values to only get the values of the hash
                                # two dimensional array is given, but to get one dimensional array we can invoke flatten method

# 2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# merge gives out a new_copy or new_hash ie non~ destructive and doesnt mutate the calling hash "p country_name"
# merge! gives out a copy of self and is destructive and mutates the calling Hash "p country_name "

country_names = { asia: "Japan",
                  europe: "UK",
                  southamerica: "brazil",
                 }

country_names2 = { africa: "zimbabwe",
                  antarctica: "antarctica",
                  oceania: "ausralasia",
                  northamerica: "canada",
                  # southamerica: "brazil"
                 }

all_countries =  country_names.merge(country_names2) do |key, old_value, new_value|
  old_value + new_value
end

all_countries2 = country_names.merge(country_names2) #call merge method on the country_names hash

all_countries3 = country_names.merge

p all_countries # returns a new Hash, that is merge into self,
p all_countries2 # returns a new Hash, formed by a continuation of other hashes into self, each new-key entry is added at the right
p all_countries3 #returns a copy of itself

all_countries4 =  country_names.merge!(country_names2) do |key, old_value, new_value|
  old_value + new_value
end

all_countries5 = country_names.merge!(country_names2)

all_countries6 = country_names.merge!

puts all_countries4 #returns self ,
puts all_countries5 #returns self, duplicates are overwritten
puts all_countries6 #returns self

# 3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

all_countries.each_key do | key, value| #used the hash from line 42 that was used to merge the "country_name and country_name2"hashes
  puts "the #{key} is a continent"
end

all_countries.each_value do | key, value|
  puts "the #{value} is an example of a country"
end

all_countries.each_pair do | key, value|
  puts "#{value} is a country found in #{key}."
end


#4. Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[ :name ]

#5. What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

#Answer: has_value? method/include? can be used

continent_country = {southamerica: "brazil"}

if continent_country.has_value?("brazil")
  puts "#{"brazil"} is present"
end

if all_countries.has_value?("ghana")
  puts "#{"ghana"} is present"
else
  puts "i cant find #{"ghana"} here"
end

# 6. Given the following code...

x = "hi there" # variable x
my_hash = {x: "some value"} #  x is a symbol
my_hash2 = {x => "some value"} # x is the local variable initialized on line 1

# use p to see what is returned of the hashes and note the difference

p my_hash
p my_hash2

# 7. If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array

# Answer :[B] There is no method called keys for Array objects.
