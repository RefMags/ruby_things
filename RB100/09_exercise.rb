# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

   # assign the array to a variable and iterate over it/ initialize an array

num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

num.each {|num| puts "#{num}"}


# 2.Same as above, but only print out values greater than 5.

num.each do |num|
  if num > 5
    puts "#{num}"
  else
    puts "#{num} is less than 5"
  end
end

num.each {|num| puts "#{num}" if num > 5 }

# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.


num2 = num.select { |num| num % 2 != 0 }
p num2


#4.  Append 11 to the end of the original array. Prepend 0 to the beginning.

num3 = num.push(11)
num4 = num.unshift(0)

p num3  # Why does 0 gets added to the array even though method doesnt call for it?

# 5. Get rid of 11. And append a 3.

num5 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
num6 = num5.pop(11).push(3)
p num6

# 6. Get rid of duplicates without specifically removing any one value.
num7 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
num8 = num7.uniq
p num8

# 7. What's the major difference between an Array and a Hash?

# an array is a sequence of elements that can be accessed by indexed while.
# a hash contains a key value pair for referencing by key

# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.

# fruits = { :apple => 'green' }
# fruits = { apple: 'red' }

# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.
# initialize the hash

h = {a:1, b:2, c:3, d:4}
p h[:b]

# 2. Add to this hash the key:value pair `{e:5}`

p h[:e] = 5

# 3. Remove all key:value pairs whose value is less than 3.5
h2 = {a:1, b:2, c:3, d:4, e:5}

h3 = h2.delete_if {|key, value| value < 3.5}
p h3

# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)

# yes,
# hash values as array
h = {apples: ['green', 'red' , 'golden' , 'yellow', 'stripped', 'white']}

# array of hashes

arr = [{dog: 'busta'}, {dog: 'harry'}]

# 11. Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# My initial thoughts
# each subarray element is associated with a key in the contacts hash
# assign key values of the contacts hash: there is a hash in a hash
  # how do I fetch the relevant element from the Array to assign to the key value of the contact hash "SUGGESTION = use dig method"
contacts["Joe Smith"][:email] = contact_data.dig(0, 0)
contacts["Joe Smith"][:address] = contact_data.dig(0, 1)
contacts["Joe Smith"][:phone] = contact_data.dig(0, 2)
contacts["Sally Johnson"][:email] = contact_data.dig(1, 0)
contacts["Sally Johnson"][:address] = contact_data.dig(1, 1)
contacts["Sally Johnson"][:phone] = contact_data.dig(1, 2)
p contacts



# Solution from LS
# how do we access each element of the subarray
# how to do we populate the hash associated with each key in contacts hash
# how do we perform element assignment to a key valuein a hash


# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# 12. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number.

 contacts = {
   "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
   "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
 }

 p contacts["Joe Smith"][:email]
 p contacts["Sally Johnson"][:phone]

#  13. Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr2 = arr.delete_if { |element| element.to_s.start_with?('s') }
p arr2

# 14. Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a1 = a.map {|element| element.to_s.split }
a1 = a1.flatten
p a1

# 15. What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
# we are comparing equality of the hashes. key value pairs are in different orders
# we dont rely on the order in hash compared to array.
# the program prints "These hashes are the same" because:
# the two objects are treated as the same key when their hash value is identical and the two objects are eql? to each other


# 16. Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]

contacts = {"Joe Smith" => {}}

# create a variable of array for the contact_data key values ie "contact_info"
contact_info = [:email, :address, :phone]

# the loop must iterate through the main(outer) hash

contacts.each do | key, hash_value|
  contact_info.each do |contact|
    hash_value[contact] = contact_data.shift
  end
end

#output the contacts
p contacts

# two dimensional array
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.each_with_index do | (key, hash_value), index|
  contact_info.each_with_index do |contact|
    hash_value[contact] = contact_data[index].shift
  end
end

p contacts 
