# 1. Write a program that checks to see if the number appears in the array
arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

if arr.include?(number)
  puts "Positive for #{number} present"
end

# 2. What will the following program return? What is the value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3)) # pass in Array(1..3) argument
arr.first.delete(arr.first.last)



arr = ["b", "a"]
arr = arr.product([Array(1..3)]) # [Array(1..3)] wraps the return value of generating elements of array 1 to 3
arr.first.delete(arr.first.last)

# 3. How do you return the word "example" from the following array?

arr = [["test", "hello", "world"], ["example", "mem"]]

puts arr[1][0]

# 4. how does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts arr.index(5) # index returns the index of a specified element, therefor the index position of the element 5 from the arr is 3.
# array.index[5] # returns a NoMethodError: undefined '[]' for Enumerator
arr[5] # returns the element at the specified index therefore return is 8

# 5. what is the value of a, b and c in the following program?

string = "Welcome to America"
a = string[6] # returns 'e'
b = string[11] # returns 'A'
c = string[19] # returns 'nil'

# 6. You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# ... and get the following error message:

# TypeError: no implicit conversion of String into Integer
  # from (irb):2:in `[]='
  # from (irb):2
  # from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
# What is the problem and how can it be fixed?


# the argument given to the array is a string, while infact an Integer argument should be used
# we can instead correct it by: (to replace 'margaret' with 'jody')

names[3] = 'jody'

# 7. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array

schools = ['Livingstone', 'Materspei', 'Ledumang', 'Yokohama']

schools.each_with_index do |value, index|
  puts "#{index}. #{value}"
end

# 8. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by value of 2
# ther should be two arrays at the end of program
# the original array and the new array creates
# print both arrays to the screen using the p method instead of puts.
