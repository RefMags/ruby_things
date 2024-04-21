# 1. Extract the names of the siblings only from the hash into a "new array". Use the select method

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

siblings = family.select do |key, value|
  key == :sisters || key == :brothers
end

siblings_arr = siblings.values.flatten

p siblings_arr


#2.  What is the difference between merge and merge!? Write a program that uses both and illustrate the difference.
# merge method merges hashes and returns a new merged hash and leaves the original hash unmodified while merge! is destructive
siblings = {  sisters: ["jane", "jill", "beth"],
              brothers: ["frank","rob","david"],
            }

extended_family = {   sisters: ["jane", "jill", "beth"],
                      brothers: ["frank","rob","david"],
                    }
#3. write a program that loops through a hash and prints all of the keys.
# Then write a program that does the same thing except printing out the values
# Write a program that prints both


# 4. How would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person.fetch(:name)

# 5. What method could you use to find out if a Hash contains a specific value in it?
# write a program that verifies that the value is within the hash
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person.value?('web developer')

# 6. What is the difference between the two hashes created?
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# 7. If you see this error what do you suspect is the most likely?
# NoMethodError: undefined method `keys' for Array

# ANSWER: B. There is no method called keys for Array objects.
