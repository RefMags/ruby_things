# practicing pseudocode
# 1. a method that returns the sum of two integers
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

# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
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

# 3. a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. For instance:
  # every_other([1, 4, 7, 2, 5]) # => [1, 7, 5]

<!-- Casual -->

Given a collection of integers.
Assign an empty array.
Iterate through the collection one by one.
  - save the first value as the starting value to empty array.
  - for each iteration, randomly select a value and add it to the array containing the first value.
After iterating through the collection, return a new array.

<!-- Formal -->

# 4. a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). if the given character does not occur at least 3 times, return nil.


# 5. a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexex of the returned array, while the elements of the second array should become the elements at the odd indexes. For instance:
  # merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
