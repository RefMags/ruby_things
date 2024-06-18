numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

=begin
  Outputs:
  1
  2
  2
  3

  - `uniq` returns a new array with unique object but did not modify `numbers`
  object.
  - the puts method, also calls  `to_s` on its argument therefore writes each
  element in a new line.
  - if `p` method had been used we would return [1, 2, 2, 3] because it
    automatically calls `inspect` on its arguments thus giving a different
    formatting to `puts`
=end


=begin
  1. what is `!=` and where should it be used?
  - this operator is a `not equal to` and is used when comparing expressions.

  2. put `!` before something, like !user_name
  - this operator is a `not`, that is it changes the boolean value to its opposite
  expression

  3. put `!` after something, like `words.uniq!`
  - the `!` bang operator at the end is typical part of a method whose function
   is to mutate the caller. It is a distructive.
   # `uniq!` removes duplicates and returns `self` if any elements are removed,
   otherwise `nil`.

  4. put `?` before something
  - `?` is the ternary operator for `if...else`

  5. put `?` after something
  - `?` is part of a method call, whose function is to check something. for
  example `empty?` returns `true` if the count of element in #Array is zero,
  `false` otherwise.

  6. puts `!!` before something, like !!user_name
  - turns any object into their boolean equivalent.
  !(!true)
  outputs: true
=end

p (8 + 3) != 10

p !true

words = ["hippo", "cats", "lions", "hippo"]
p words.uniq!

p (4 == 4) ? "this is true" : " this is not true"

p words.empty?

# replacing in a string

advice = "Few things in life are as important as house training your pet dinosaur."
# new_advice = advice.replace("Few things in life are as urgent as house training your pet dinosaur.")
new_advice = advice.gsub!("important", "urgent")

# how do the following method calls differ:

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
# this method call is passed in the index location that reference the element to be removed from the array
# returns the element being removed.
# => 2
# the array is now [1, 3, 4, 5]
numbers.delete(1)
# the method call is passed in the element that is intended to be deleted from the array.
# returns the element being removed '1'.
#  the array is now [2, 3, 4, 5]

# show two ways to put "Four score and "

famous_words = "seven years ago..."

puts "Four score and #{famous_words}"
puts "Four score and " + "seven years ago..."
puts "Four score and " + famous_words
puts famous_words.prepend("Four score and ")
puts "Four score and " << famous_words


# un-nest the array below
flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
p flintstones.flatten!

# create an array with only two elements from hash

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
new_array = flintstones("Barney")
p new_array
