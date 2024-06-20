=begin
  rotate an array by moving the first element to the end of array.
  The original array should not be modified.
  Do not use Array#rotate or Array#rotate! for implementation.

  PEDAC approach:

  Problem
  - given an array, move the first element to the end of the array.
      - example
      rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
      rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
      rotate_array(['a']) == ['a']

      x = [1, 2, 3, 4]
      rotate_array(x) == [2, 3, 4, 1]   # => true
      x == [1, 2, 3, 4]                 # => true
    - as such the inputs is the array [7, 3, 5, 2, 9, 1]
                  output a rotated array [3, 5, 2, 9, 1, 7]
                  return is original array [7, 3, 5, 2, 9, 1]

  - explicit rules:
    - only the first element is rotated
    - The original array should not be modfified
    - to not use `Array#rotate` or `Array#rotate!`

  - implicit
    -

  - mental model:
    - how can I explicitly select the first element from the array.
    - how can I add the explicitly selected first element to the array but only at the end?
    - can I delete explicitly then append? without having to use rotate method?
    - `delete` method is destructive, is there a non-destructive delete/remove method?

  - Data structure and algorithm
  pseudocode using the mental model:
  # Given an array
    - remove the first element from the array and save the array to a variable.
      - hint: make sure that you test what the original array is after you remove the first element
    - add the first element of the original array to the modified array in which
    the first element was removed.
    - confirm that the first array is removed and added to the last
    - confirm that original array is not motified.

=end

def rotate_first_element(array)
  array[1..5] << array.first
  # array_without_first = array.drop(1)
  # array_without_first << array.first
end

arr = [7, 3, 5, 2, 9, 1]
p rotate_first_element(arr)
p arr

names = ["John", "Peter", "Carl"]
p rotate_first_element(names)
p names
