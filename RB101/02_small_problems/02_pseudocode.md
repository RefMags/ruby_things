# practicing pseudocode
1. a method that returns the sum of two integers
<!-- Casual -->
Given a set of two integers
Assign each number to a variable
Perform an additional operation of the two variables
Return a value

  <!-- Formal -->
```
START

# assign a variable to a first number.
# assign a variable to a second number.

SET sum = num1 + num2
PRINT sum

END
```

 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
<!-- Casual -->
Given an array of strings e.g array = ["Bob", "Dylan"]
Create a new string
Iterate through the array of string on by one
  - Save the first string as the first starting string.
  - For each iteration, add(concatenate) to the saved string.

After iterating through the collection, return a new string.

<!-- Formal -->
```
START
# Given a collection of array_string.

SET iterator to 0
SET concat = empty string

WHILE iterator <= length of strings
SET concat = string value in array at the space/position of iterator
iterator = iterator + 1

PRINT concat

END

```

3. a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. For instance:

```
  every_other([1, 4, 7, 2, 5]) # => [1, 7, 5]
```
<!-- Casual -->

Given a collection of integers.
Assign an empty array.
Iterate through the collection one by one.
  - For each integer iteration, check if the location is odd number
  - if the location is even
    -save the integer at the location into a new collection
  - otherwise,
    if the integer is at an odd index, skip


After iterating through the collection, return a new array.

<!-- Formal -->
```
START
# Given a collection of integers.
SET iterations = 0
SET new_array = [empty collection]

WHILE iterator <= length of numbers
IF iterator % 2 = 0
  APPEND current_value to the new_array
ELSE
  go to next iteration

  iteration = iteration + 1
PRINT new_array

END
```

# 4. a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). if the given character does not occur at least 3 times, return nil.
<!-- Casual -->
Given a string.
Iterate over each index of a string to test.
  - for each iteration check the equality of each character in a string with the desired character assigned the variable.
  - Count the number of times the iteration encounters the desired character.
  - If the desired character occurs for the third time,
    - print the location index at which the desired character occurs.
  - else if the given character does not occur for atleast 3rd time in a given string, returns nil.

  After iterating through the string, return the index of the 3rd desired character.

```
START

Given  a string.
SET iteration = 0

SET string.each do | character.3times|



END
```

5. a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even index of the returned array, while the elements of the second array should become the elements at the odd indexes. For instance:
  # merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
<!-- Casual -->

Given a method that takes in two collection of integers.

Iterate through the first collection one by one.
  - save the first value of the array as the starting value(even position).
  - for the iteration of the first array, skip an index, to create an empty index in an odd position.
  - for the first array, place an integer in an even index position to populate the new_array.

Iterate through the second collection one by one.
  - for the first integer, assign the first odd position to the it.
  - Iterate over each integer, and add them to the continuos odd index in the new_array.

After iterating through the collection, return the new_array.

<!-- Formal -->
