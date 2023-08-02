# 1. Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

# find method the value 3
arr = [1, 3, 5, 7, 9, 11]
number = 3

# use each do to iterate over an array
arr.each do |num|
  if num == number #if conditional to check if param |num| equal to the variable
    puts "#{number} is in array" # if true, concatenate to state the presence of the value
  end
end

if arr.include?(number)
  puts "#{number} is indeed in the array"
end
# 2. What will the following programs return? What is the value of arr after each?

  # arr = ["b", "a"] #initialize arr
  #   arr = arr.product(Array(1..3)) # pass product method which returns an array of a all combination of elements from all arrays
  #                                   # calls a product to an argument Array(1..3)/ Array = [1, 2, 3]
  #   arr.first.delete(arr.first.last) #invoke delete method on first element, and deletes all items from calling arr that are equal to argument

  # arr = ["b", "a"]
  #   arr = arr.product([Array(1..3)]) # [Array(1..3)] => [] wraps the return value by generating array into an array
  #   arr.first.delete(arr.first.last)

# 3. How do you return the word "example" from the following array?


arr = [["test", "hello", "world"],["example", "mem"]]

# Accessing an element "example" from the array~ since its specified, and this is a small array:
# specifify the index number => in irb ==>> arr[1][1] or with arr.last.first

# Note that this is an array in an array


# 4. What does each method return in the following example?

# arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1. arr.index(5)

# 2. arr.index[5]

# 3. arr[5]

# 5. What is the value of a, b, and c in the following program?

# string = "Welcome to America!"
# a = string[6]
# b = string[11]
# c = string[19]

# 6. You run the following code...

# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# ...and get the following error message:

# TypeError: no implicit conversion of String into Integer
  # from (irb):2:in `[]='
  # from (irb):2
  # from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

  # What is the problem and how can it be fixed?

# 7. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

# 8. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.
